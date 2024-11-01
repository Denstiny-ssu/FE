
export const MAIN_PAGE = 'http://localhost:5173/';

//////// SERVER //////////
export const SERVER_DOMAIN = "http://15.165.230.191:8080"
export const SERVER_ENDPOINT = SERVER_DOMAIN + "/api/login/endpoint";
export const LOGOUT = SERVER_DOMAIN + "/api/public/logout";
export const LOGIN_POST = SERVER_DOMAIN + "/api/users/login";
export const GET_MY_NEW_TOKEN = SERVER_DOMAIN + "/api/users/reissue";
export const GET_MY_INFO = SERVER_DOMAIN + "/api/user/";
export const CHANGE_MY_INFO = SERVER_DOMAIN + "/api/user/"

/////// CREATE_OPT ///////
export const CREATE_NICKNAKME_CHECK = SERVER_DOMAIN + "/api/users/check-nickname?nickname=";
export const CREATE_EMAIL_CHECK = SERVER_DOMAIN + "/api/users/check-email?email=";
export const CREATE_REGISTER = SERVER_DOMAIN + "/api/users/register";
/////// oAuth /////////////
export const NAVER_LOGIN = SERVER_DOMAIN + "/oauth2/authorization/naver";
export const KAKAO_LOGIN = SERVER_DOMAIN + "/oauth2/authorization/kakao";


/////// find /////////////
export const FIND_DOMAIN = SERVER_DOMAIN + "/api/find";
export const FIND_OPEN = FIND_DOMAIN + "/open-dentist";
export const FIND_DIST = FIND_DOMAIN + "/dentist";
export const FIND_REVIEW = FIND_DOMAIN + "/cat-dentist";


export const API_PUBLIC = SERVER_DOMAIN + "/api/public";
export const NO_INGA_DOMAIN = SERVER_DOMAIN + "/api/public/find";
export const FIND_HOSPITAL_BY_NAME = NO_INGA_DOMAIN + "/by-name";

export const HOSPI_ALL_REVIEW = SERVER_DOMAIN + "/api/public/review";

export const REVIEW_COMMENT = API_PUBLIC + "/review-comment";