func kelime (a: String) -> String{
    return a
}

var word: (String) -> String

word = kelime

var str = word("raziye")

var uzunluk = countElements(str)

var dizi: [Character] = []

for i in str{
    dizi.append(i)
}

print(dizi)
