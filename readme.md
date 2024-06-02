# GO Expert - Open Telemetry

## Run locally

In the project root execute:
```shell
docker-compose up
```

## APIs

### POST /weather

200:
```json
Request Body:
{"cep":"12345678"}

Response Body:
{"city":"somewhere","temp_C":16,"temp_F":60.8,"temp_K":289.1}
```

422:
```
invalid zipcode
```

404:
```
can not find zipcode
```

## URLs

| Service    | URL                    |
| ---------- | ---------------------- |
| Zipkin     | http://localhost:9411  |
| Webserver  | http://localhost:8080  |
