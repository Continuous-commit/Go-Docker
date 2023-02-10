FROM golang:1.19-alpine AS builder

WORKDIR /go/src

RUN go install github.com/cosmtrek/air@latest

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o main /go/src/main.go

CMD ["air", "-c", ".air.toml"]

FROM alpine

WORKDIR /go/src

COPY --from=builder /go/src/main .

COPY . .

EXPOSE 8080

CMD [ "/go/src/main" ]
