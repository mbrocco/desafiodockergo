#FROM golang:1.16.4-alpine3.12
#FROM golang:1.16.4

#WORKDIR /go/app

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
#COPY . .

# Download all the dependencies
#RUN go get -d -v ./...
#RUN go mod init desafiodocker

# Install the package
#RUN go install -v ./...

# This container exposes port 8080 to the outside world

# Run the executable
#CMD ["app"]

FROM golang:1.16.4-alpine3.13 as build

WORKDIR /go/app

ADD . .

RUN go mod init desafiodocker
RUN CGO_ENABLED=0 go build -o app


FROM scratch as production

COPY --from=build /go/app/app /app

ENTRYPOINT ["/app"]