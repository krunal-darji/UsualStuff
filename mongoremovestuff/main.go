package main

import (
	"fmt"
	"os"

	mgo "gopkg.in/mgo.v2"
	"gopkg.in/mgo.v2/bson"
)

func main() {
	Host := []string{
		"127.0.0.1:27017",
	}
	const (
		Username = "root"
		//	Database   = "isprime-cdn-database"
		//	Collection = "resource-record-collection"
		Database   = "belugastuff"
		Collection = "inventory"
	)
	session, err := mgo.DialWithInfo(&mgo.DialInfo{
		Addrs: Host,
	})

	session.SetSafe(&mgo.Safe{})

	if err != nil {
		panic(err)
	}
	defer session.Close()

	//collection
	c := session.DB(Database).C(Collection)

	// RemoveStuff will remove one single entry
	err = c.Remove(bson.M{"item": "$1"})
	if err != nil {
		fmt.Printf("remove fail %v\n", err)
		os.Exit(1)
	}

}
