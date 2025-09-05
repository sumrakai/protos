PROTO_SRC := $(wildcard proto/**/*.proto)
PROTO_OUT := ./gen/go

.PHONY: proto clean

proto:
	protoc -I proto \
		$(PROTO_SRC) \
		--go_out=$(PROTO_OUT) --go_opt=paths=source_relative \
		--go-grpc_out=$(PROTO_OUT) --go-grpc_opt=paths=source_relative

clean:
	rm -rf $(PROTO_OUT)/*
