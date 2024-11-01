#!/bin/bash

# npm 및 TypeScript 설치
sudo apt install -y npm
npm install
sudo npm install -g typescript
tsc -v

# 파일 이름 변경
mv ~/FE/src/routes/community ~/FE/src/routes/Community
mv ~/FE/src/address.ts ~/FE/src/Address.ts
cd ~/FE/public

sudo chown -R www-data:www-data /home/ubuntu/FE
sudo chmod -R 755 /home/ubuntu
sudo chmod -R 755 /home/ubuntu/FE
sudo chmod -R 755 /home/ubuntu/FE/dist

# Nginx 설치
sudo apt install -y nginx

# HOST_IP 변수 설정
HOST_IP=$(hostname | sed 's/ip-\([0-9]*\)-\([0-9]*\)-\([0-9]*\)-\([0-9]*\)/\1.\2.\3.\4/')
NGINX_CONF="/etc/nginx/sites-available/denstiny.com.conf"

# Nginx 설정 파일 작성 (덮어쓰기)
cat <<EOF | sudo tee $NGINX_CONF > /dev/null
server {
    listen 80;
    server_name denstiny;  # 또는 원하는 도메인 이름 

    root /home/ubuntu/FE/dist;  # Vite 프로젝트의 dist 폴더 경로

    index index.html;

    location / {
        try_files \$uri /index.html;
    }
}
EOF

# 심볼릭 링크로 Nginx 설정 활성화 (기존 링크가 있다면 삭제 후 재생성)
sudo ln -sf $NGINX_CONF /etc/nginx/sites-enabled/

# Nginx 테스트 및 재시작
sudo nginx -t && sudo systemctl restart nginx

#설정 확인
sudo systemctl status nginx
sudo tail -f /var/log/nginx/error.log