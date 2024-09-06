package main

import (
    "fmt"
    "net/http"
)

func helloWorld(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintln(w, "Hello, World!")
}

func main() {
    http.HandleFunc("/", helloWorld)
    fmt.Println("Server running at http://localhost:5000/")
    http.ListenAndServe(":5000", nil)
}
