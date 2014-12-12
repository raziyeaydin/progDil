func temizle ( str: String ) -> String {
    
    var kelime: ( String ) = ""
    var dizi: [ Character ] = []

    for i in str {
        dizi.append(i)
    }
  
    let leng = dizi.count-1
    var start = 0, stop = leng
  
    while ( start < leng ) {
        if ( dizi[ start ] != "_" ) {
            break
        }
        else {
            dizi[ start ] = dizi[ start ]
            ++start
        }
    }
  
    while ( stop <= leng ) {
        if ( dizi[ stop ] != "_" ) {
            break
        }
        else {
            dizi[ stop ] = dizi[ stop ]
            --stop
        }
    }
  
    for ( var i = start ; i <= stop ; ++i) {
        if( dizi[ i ] == "_"){
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
