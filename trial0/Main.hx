import js.Browser;
import flat.Float32FlatRGBA;
//import AbstractEnumTools;
enum abstract AppColors( Int ) to Int from Int {
    var Violet      = 0xFF9400D3;
    var Indigo      = 0xFF4b0082;
    var Blue        = 0xFF0000FF;
    var Green       = 0xFF00ff00;
    var Yellow      = 0xFFFFFF00;
    var Orange      = 0xFFFF7F00;
    var Red         = 0xFFFF0000;
    var Black       = 0xFF000000;
    var LightGrey   = 0xFF444444;
    var MidGrey     = 0xFF333333;
    var DarkGrey    = 0xFF0c0c0c;
    var NearlyBlack = 0xFF111111;
    var White       = 0xFFFFFFFF;
}

class Main {
    static function main() {
        var button = Browser.document.createButtonElement();
        button.textContent = "Click me!";
        button.onclick = function(event) {
            Browser.alert("Haxe is great");
        }
        Browser.document.body.appendChild(button);
        //var argb = AbstractEnumTools.getValues(AppColors);
        var argb =  [ Violet, Indigo, Blue, Green, Yellow, Orange, Red, Black, LightGrey, MidGrey, DarkGrey, NearlyBlack, White ];
        var arrayColor = new Float32FlatRGBA(100);
        for( c in argb ){
            arrayColor.argb = c;
            arrayColor.next();
        }
        trace( 'arrayColor list of colors contained as r, g, b, a Floats ' );
        arrayColor.pos = 0;
        for( i in arrayColor ) trace( '0x'+arrayColor.hex() );
        trace( 'pos ' + arrayColor.pos );
        trace( 'len ' + arrayColor.length );
        trace( arrayColor.getArray() );
    }
}