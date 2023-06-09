FROM golang:1.16

ARG PORT=8080
ENV REQUEST_ORIGIN="http://localhost:5001"

WORKDIR /app

COPY ./go.mod ./
RUN go mod download

COPY . .

RUN go get ./
RUN go build -o /main

EXPOSE $PORT

CMD ["/main"]