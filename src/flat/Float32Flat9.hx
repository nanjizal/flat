package flat;
import haxe.io.Float32Array; // js.lib.Float32Array
// arr[0] defines pos the position, pos is used to get items
abstract Float32Flat9( Float32Array ) {
    
    public inline function new( len: Int ){
        this = new Float32Array( len );
        this[0] = 0;
    }
  	//var self(get,never):ArrayColor;
    //function get_self() return (cast this : ArrayColor);
    
    public var length( get, never ): Int;
    inline function get_length(): Int {
        var l = this.length - 1;
        return ( l < 0 )? 0: Math.ceil( l / 9 );
    }
    public var index( get, set ): Int;
    inline function get_index(): Int {
        return Std.int( pos );
    }
    inline function set_index( id: Int ): Int {
        pos = id;
        return id;
    }
    public var pos( get, set ): Float;
    inline function get_pos(): Float {
        return this[ 0 ];
    }
    inline function set_pos( pos_: Float ): Float {
        this[ 0 ] = pos_;
        return pos_;
    }
    public inline function hasNext() return pos < length;
    public inline function next(): Float {
        pos = pos + 1.;
        return pos;
    }
    @:op([])
    //@:arrayAccess
    public inline function readItem( k: Int ): Float {
      return this[ index*9 + k ];
    }
    @:op([])
    //@:arrayAccess
    public inline function writeItem( k: Int, v: Float ): Float {
        this[ index*9 + k ] = v;
        return v;
    }
    
    @:op(A++) public inline function increment() {
        return next();
    }
    public inline function getArray(): Float32Array {
        return this.subarray( 1, this.length - 1 );
    }
}
