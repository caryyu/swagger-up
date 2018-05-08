# Combination
* *Node-Login* - https://github.com/braitsch/node-login
* *Swagger UI Express* - https://github.com/scottie1984/swagger-ui-express

# Build Image for dockerbase
```
cp -R node_modules .dockerbase/node_modules
cp -R swagger-ui-express .dockerbase/swagger-ui-express
docker build -t swagger-ui-base:latest ./.dockerbase/
```

# Build Image for this project
```
docker build -t swagger-ui:latest .
```

# Environment Variables
- DB_HOST 
- DB_PORT
- DB_NAME
- SWAGGER_URL
- SWAGGER_OPTIONS

# Docker run
Notice: Please setting Mongo container up, which name must be `mongo` Before running following command. 
```
docker run -d --link mongo:mongo -e DB_HOST=mongo -e SWAGGER_OPTIONS='{"urls": [{"name":"petstore","url":"http://petstore.swagger.io/v2/swagger.json"}]}' -p 3000:3000  swagger-ui:latest
```