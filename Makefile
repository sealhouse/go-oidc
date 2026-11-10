# sealhouse PR lane targets: similar to upstream's .github/workflows/test.yaml, using
# staticcheck 2026.2.2 to handle Go 1.27 export data.
.PHONY: test lint

test:
	go test -v ./...

lint:
	go run honnef.co/go/tools/cmd/staticcheck@v0.8.2 ./...
