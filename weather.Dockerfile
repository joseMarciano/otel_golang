FROM golang:1.22 as builder
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates
RUN CGO_ENABLED=0 GOOS=linux go build -o weather_service ./cmd/open_telemetry/internal_service/main.go

FROM scratch
WORKDIR /app
COPY --from=builder /app/weather_service .
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
ENTRYPOINT [ "./weather_service" ]