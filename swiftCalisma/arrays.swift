//diziye eleman ekleme
//append() metodu ile sondan eleman ekleme

var array = ["elma","armut"]

println(array) // listeyi düz yazdırma
for i in array{ // dizi'deki elemanları listeler
  println(i)
}

array.append("çilek")
println(array)

//insert ile belirtilen indise eleman ekleme

array.insert("üzüm", atIndex:1 ) // array dizisinin 1. indisine eleman atadık
println(array)

//diziden eleman silme
//removeLast() metodu ile sondan eleman silme

array.removeLast()

//removeAtIndex() metodu ile belirli indeksteki elemanı silme 
array.removeAtIndex(2) // dizinin 3. elemanını sildik

