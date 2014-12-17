func cleaning ( str: String ) -> String {
    
    var word: ( String ) = ""
    var array: [ Character ] = []

    for i in str {
        array.append(i)
    }
  
    let leng = array.count-1
    var start = 0, stop = leng
  
    while ( start < leng ) {
        if ( array[ start ] == "_" ) {
            ++start
        }
        else {
            break
        }
    }
  
    while ( stop <= leng ) {
        if ( array[ stop ] == "_" ) {
            --stop
        }
        else {
            break
        }
    }
  
    for ( var i = start ; i <= stop ; ++i) {
        if( array[ i ] == "_") {
            array[ i ] = " "
        }
    }
  
    for ( var m = 0 ; m < array.count ; ++m ) {
        word = word + toString( array[ m ] )
    }

    return word
}

var result : (String) -> String

result = cleaning
let str : (String) = Process.arguments[1]
var cleaned = result(str)
print(cleaned)
