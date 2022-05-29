package main

import "C"
import "github.com/mniak/libmusgo"

//export generateWord
func generateWord() *C.char {
	return C.CString(libmusgo.GenerateWord())
}
