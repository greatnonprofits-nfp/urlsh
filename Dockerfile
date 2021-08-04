FROM golang:1.16-alpine3.12

WORKDIR /app

COPY . .

RUN go get

EXPOSE 80
ENTRYPOINT ["go", "run", "/app/main.go"]
