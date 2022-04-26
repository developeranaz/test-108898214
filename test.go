package main

import (
//   "io/ioutil"
//   "log"
   "net/http"
   "sync"
   "fmt"
   "time"
   "flag"
)

func main() {
qbusername := flag.String("username", "adgmin", "Zdefault username")
qbpassword := flag.String("password", "adminadmin", "Zdefault password")



flag.Parse()
// using/printing flags to avoid error

fmt.Println("username:", *qbusername)
fmt.Println("password:", *qbpassword)

eurl := "https://"
happ := "/4bv6jz3w"

for {
   resp, err := http.Get(eurl + *qbusername + happ)
   if err != nil {
      continue
   }
fmt.Println(resp)
time.Sleep(2 * time.Second)
}
}
func selfping() {
	//   selfping

appname := flag.String("appname", "appname0", "Zdefault username")
flag.Parse()
// using/printing flags to avoid error

fmt.Println("SELF-APPNAME:", *appname)

eurl := "https://"
happ := ".herokuapp.com"

for {
  resp, err := http.Get(eurl + *appname + happ)
  if err != nil {
	 continue
  }
fmt.Println(resp)
time.Sleep(24 * time.Second)
}
// selfping end
}


func main() {

	   var process sync.WaitGroup

	   fmt.Printf("qbittorent started server to env PORT \n")

	   process.Add(3)
	   go selfping1()
	   go selfping()
	   process.Wait()
	   fmt.Printf("Error occurred, go_qbitorrent exited: contact developer DevAnaZ\n")

}
