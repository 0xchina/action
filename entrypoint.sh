#!/bin/sh

docker run -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=apsu -e MONGO_INITDB_ROOT_USERNAME=apsu -e MONGO_INITDB_ROOT_PASSWORD=yangpaopao mongo

docker run -p 6379:6379 redis redis-server --requirepass yangpaopao

docker run -p 1883:1883 -v $(pwd)/mosquitto/mosquitto.conf:/mosquitto/config/mosquitto.conf -v $(pwd)/mosquitto/mosquitto.conf:/mosquitto/config/mosquitto.conf -v $(pwd)/mosquitto/dynamic-security.json:/mosquitto/auth/dynamic-security.json eclipse-mosquitto

