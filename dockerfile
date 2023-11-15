FROM httpd:latest
COPY Case-study_app/index.html /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80