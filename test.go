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

func selfping1() {
qbusername := flag.String("username", "adgmin", "Zdefault username")
qbpassword := flag.String("password", "adminadmin", "Zdefault password")



flag.Parse()
// using/printing flags to avoid error

fmt.Println("username:", *qbusername)

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


// second pinging

func selfping2() {
	//   selfping

appname := flag.String("appname", "appname0", "Zdefault username")
flag.Parse()
// using/printing flags to avoid error

fmt.Println("SELF-APPNAME:", *appname)

eurl2 := "https://"
happ2 := ".herotheking.com"

for {
  resp, err := http.Get(eurl2 + *appname + happ2)
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

	   process.Add(2)
	   go selfping1()
	   go selfping2()
	   process.Wait()
	   fmt.Printf("Error occurred, go_xxx exited: contact developer \n")

}
