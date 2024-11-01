#!/bin/bash

# Git 리포지토리 클론
git clone https://github.com/Denstiny-ssu/FE.git
cd FE

# npm 및 TypeScript 설치
sudo apt install -y npm
npm install
sudo npm install -g typescript
tsc -v

# 파일 이름 변경
mv ~/FE/src/routes/community ~/FE/src/routes/Community
mv ~/FE/src/address.ts ~/FE/src/Address.ts
cd ~/FE/public

# Nginx 설치
sudo apt install -y nginx

# 호스트 IP 가져오기
HOST_IP=$(hostname | sed 's/ip-\([0-9]*\)-\([0-9]*\)-\([0-9]*\)-\([0-9]*\)/\1.\2.\3.\4/')
NGINX_CONF="/etc/nginx/sites-available/15.165.230.191.conf"

# Nginx 설정 파일 작성
cat <<EOF | sudo tee $NGINX_CONF
http {
    server {
        listen 80;
        server_name $HOST_IP;

        root /home/ubuntu/FE/dist;  # Vite 프로젝트의 dist 폴더 경로

        index index.html;

        location / {
            try_files \$uri /index.html;
        }
    }
}
EOF

# 심볼릭 링크로 Nginx 설정 활성화
sudo ln -sf $NGINX_CONF /etc/nginx/sites-enabled/

# Nginx 테스트 및 재시작
sudo nginx -t
sudo systemctl restart nginx
