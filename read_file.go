// Go program to scan the words
package main

import (
  "fmt"
  "os"
  "bufio"
  "log"
)

func main() {

  file, err := os.Open("search.txt")
  if err != nil {
    log.Fatal(err)
  }

  Scanner := bufio.NewScanner(file)
  Scanner.Split(bufio.ScanWords)

  for Scanner.Scan() {
    fmt.Println(Scanner.Text())
  }
  if err := Scanner.Err(); err != nil {
    log.Fatal(err)
  }
}
