cd services
cd apigateway
start java -jar discovery-service.jar
TIMEOUT /T 12 /NOBREAK
start java -Dserver.port=80 -jar gateway-service.jar
cd ..\..\
start node services\tradeservice\bin\run.js
start node services\referencedataservice\bin\run.js
start node services\notificationservice\bin\run.js
start node services\marketdataservice\bin\run.js
