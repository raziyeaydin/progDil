var str: (String) = "_foo_bar_"
func tire_bul (a: String) -> String {
    var list: (String) = ""
    var dizi: [Character] = []
    for i in a{
        dizi.append(i)
    }
    var leng = dizi.count - 1
    list = list + toString(dizi[0])
    for ( var k = 1 ; k < leng ; ++k ){
        if (dizi[k] != "_"){
            list = list + toString(dizi[k])
            continue
        }
        else{
            if ( dizi[k+1] != "_") {
                dizi[k] = " "
                list = list + toString(dizi[k])
                continue
            }
            else{
                dizi[k+1] = " "
                list = list + toString(dizi[k+1])
                continue
            }
        }
    }
    list = list + toString(dizi[leng])
    return list
}

var islem: (String) -> String
islem = tire_bul
var xyz = islem(str)
print(xyz)
