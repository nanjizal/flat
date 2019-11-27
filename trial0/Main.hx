import js.Browser;
import flat.Float32FlatRGBA;
import flat.Float32FlatTriangle;
import flat.Int32Flat4;
import flat.UInt16Flat4;
import flat.FloatFlat4;
import flat.IntFlat4;
import flat.Int32Flat9;
import flat.UInt16Flat9;
import flat.FloatFlat9;
import flat.IntFlat9;
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
        var argb =  [ Violet, Indigo, Blue, Green, Yellow, Orange, Red, Black, LightGrey, MidGrey, DarkGrey, NearlyBlack, White ];
        var arrayTri = new Float32FlatTriangle(100);
        var arrayColor = new Float32FlatRGBA(100);
        for( c in argb ){
            trace( 'c ' + StringTools.hex( c ) );
            arrayColor.argb = c;
            arrayColor.next();
        }
        trace( 'arrayColor ' + arrayColor.length );
        trace( 'arrayColor list of colors contained as r, g, b, a Floats ' );
        arrayColor.pos = 0;//-1;
        trace( arrayColor.length );
        trace( 'start ');
        for( i in 0...arrayColor.length ) {
            trace( 'arrayColor.pos ' + arrayColor.pos );
            trace( i + ' ' + arrayColor.hex() );
            trace( StringTools.hex(argb[i]));
            arrayColor.next();
        }
        trace( arrayColor.hexAll() );
        trace( 'end ' );
        trace( 'pos ' + arrayColor.pos );
        //trace( 'len ' + arrayColor.length );
        var arr =  arrayColor.getArray();
        for( i in 0...arr.length ){
            trace( 'i ' + i );
            trace( StringTools.hex( Math.round( arr[i] * 255 ) ) );
        }
    }
}