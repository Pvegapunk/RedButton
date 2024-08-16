FROM nginx:alpine

# Copie os arquivos HTML e CSS para o diretório padrão do Nginx
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Exponha a porta 80 para o serviço web
EXPOSE 80

# Inicie o servidor Nginx
CMD ["nginx", "-g", "daemon off;"]