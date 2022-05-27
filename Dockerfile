FROM swaggerapi/swagger-ui:v4.1.3
ENV SWAGGER_JSON_URL="doc/api.json"
ADD ./api.json /usr/share/nginx/html/doc/
RUN sed -ie 's@UDB_SERVICE_HOST@'"$UDB_SERVICE_HOST"'@g' /usr/share/nginx/html/doc/api.json
