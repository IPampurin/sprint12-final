FROM golang:1.24.1

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /sprint12-final

CMD ["/sprint12-final"]