package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Println("Demo")
	s := newServer("")
	s.Serve()
}

type server struct {
	path string
}

func newServer(path string) *server {
	return &server{path: path}
}

func (srv *server) defaultHandler(resp http.ResponseWriter, req *http.Request) {
	resp.Header().Set("Content-Type", "text/html; charset=utf-8")
	resp.Write([]byte(`hello`))
}

func (srv *server) Serve() {
	http.HandleFunc("/", srv.defaultHandler)
	http.ListenAndServe(":8000", nil)
}
