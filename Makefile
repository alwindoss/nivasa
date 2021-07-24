# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BINARY_LOC=bin
BINARY_NAME=nivasa
BINARY_UNIX=$(BINARY_NAME)_unix

all: test build
build: 
	GOOS=linux GOARCH=amd64 $(GOBUILD) -o ./$(BINARY_LOC)/$(BINARY_NAME) -v ./cmd/$(BINARY_NAME)/...
test: 
	$(GOTEST) -v ./...
clean: 
	$(GOCLEAN)
	rm -rf $(BINARY_LOC)
run:
	./$(BINARY_LOC)/$(BINARY_NAME)
