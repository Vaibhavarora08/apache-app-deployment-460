FROM httpd:latest

RUN apt -y update && apt install -y python3 python3-pip
RUN pip install awscli
COPY index.html /usr/local/apache2/htdocs
CMD ["httpd-foreground"]
EXPOSE 80
