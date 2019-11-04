package flat;
import flat.Float32Flat4;
@:forward
abstract Float32FlatRGBA( Float32Flat4 ){
    public inline function new( len: Int ){
        this = new Float32Flat4( len );
    }
    public var red( get, set ): Float;
    function get_red(): Float {
        return this[ 0 ];
        //return this.read( 1 );
    }
    function set_red( v: Float ): Float {
        this[ 0 ] = v;
        //this.write( 1, v );
        return v;
    }
    
    public var blue( get, set ): Float;
    inline function get_blue(): Float {
        return this[ 1 ];
        //return this.read( 2 );
    }
    inline function set_blue( v: Float ): Float {
        this[ 1 ] = v;
        //this.write( 2, v );
        return v;
    }
    public var green( get, set ): Float;
    inline function get_green(): Float {
        return this[ 2 ];
        //return this.read( 3 );
    }
    inline function set_green( v: Float ): Float {
        this[ 2 ] = v;
        //this.write( 3, v );
        return v;
    }
    public var alpha( get, set ): Float;
    inline function get_alpha(): Float {
        return this[ 3 ];
        //return this.read( 4 );
    }
    inline function set_alpha( v: Float ): Float {
        this[ 3 ] = v;
        //this.write( 4, v );
        return v;
    }
    public var rgb( get, set ): Int;
    inline function set_rgb( col: Int ): Int {
        red   = redChannel( col );
        blue  = blueChannel( col );
        green = greenChannel( col );
        alpha = 1.;
        return col;
    }
    inline function get_rgb():Int {
        return   Math.round( blue  * 255 )
               | ( Math.round( green * 255 ) << 8 ) 
               |   ( Math.round( red   * 255 ) << 16 );
    }
    public var argb( get, set ): Int;
    inline function set_argb( col: Int ): Int {
        red   = redChannel( col );
        blue  = blueChannel( col );
        green = greenChannel( col );
        alpha = alphaChannel( col );
        return col;
    }
    inline function get_argb():Int {
        return    ( Math.round( alpha * 255 ) << 24 ) 
                | ( Math.round( red   * 255 ) << 16) 
                | ( Math.round( green * 255 ) << 8) 
                |   Math.round( blue  * 255 );
    }
    // useful for quick trace
    public inline function hex(): String {
        return StringTools.hex( rgb );
    }
    public static inline function alphaChannel( int: Int ) : Float
        return ((int >> 24) & 255) / 255;
    public static inline function redChannel( int: Int ) : Float
        return ((int >> 16) & 255) / 255;
    public static inline function greenChannel( int: Int ) : Float
        return ((int >> 8) & 255) / 255;
    public static inline function blueChannel( int: Int ) : Float
        return (int & 255) / 255;
}
