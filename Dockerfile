FROM swagger-ui-base:latest

ADD ./app /swagger/app/
ADD ./app.js /swagger/
ADD ./package.json /swagger/

WORKDIR /swagger/

CMD npm start