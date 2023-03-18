FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod init go_restapi
RUN go get -u github.com/gorilla/mux
RUN go build

EXPOSE 8000

CMD ["./go_restapi"]