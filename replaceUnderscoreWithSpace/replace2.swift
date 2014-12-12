func temizle ( str: String ) -> String {
    
    var kelime: ( String ) = ""
    var dizi: [ Character ] = []

    for i in str {
        dizi.append(i)
    }
  
    let leng = dizi.count-1
    var start = 0, stop = leng
  
    while ( start < leng ) {
        if ( dizi[ start ] == "_" ) {
            ++start
        }
        else {
            break
        }
    }
  
    while ( stop <= leng ) {
        if ( dizi[ stop ] == "_" ) {
            --stop
        }
        else {
            break
        }
    }
  
    for ( var i = start ; i <= stop ; ++i) {
        if( dizi[ i ] == "_") {
            dizi[ i ] = " "
        }
    }
  
    for ( var m = 0 ; m < dizi.count ; ++m ) {
        kelime = kelime + toString( dizi[ m ] )
    }

    return kelime
}

var islem: (String) -> String
islem = temizle
let a : (String) = "___foo____bar___"
var xyz = islem(a)
print(xyz)
