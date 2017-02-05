all:
	go-bindata -o cmpl_assets.go tmpl/ public/...
	go build .
	./gowiki

linux:
	go-bindata -o cmpl_assets.go tmpl/ public/...
	GOOS=linux GOARCH=amd64 go build .
