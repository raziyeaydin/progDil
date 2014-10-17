                   //1.Durum
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
//2 aşamada tuple oluşturduk
println(http404Error)
println("statusCode:\(statusCode)")



                   //2.Durum
let http404Error = (statusCode:404, description:"Not Found")
//tek seferde tuple oluşturduk
println(http404Error)
println(http404Error.0)
println(http404Error.description)
