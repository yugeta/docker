FROM nginx:latest
ADD nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off; load_module /etc/nginx/modules/ngx_http_perl_module-debug.so;"]
