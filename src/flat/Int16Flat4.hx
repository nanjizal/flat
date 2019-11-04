package flat;
import haxe.io.Int16Array;
// arr[0] defines pos the position, pos is used to get items
abstract Int16Flat4( Int16Array ) {
    
    public inline function new( len: Int ){
        this = new Int16Flat4( len );
        this[0] = 0;
    }
    
    public var length( get, never ): Int;
    inline function get_length(): Int {
        var l = this.length - 1;
        return ( l < 0 )? 0: Math.ceil( l / 4 );
    }
    public var index( get, set ): Int;
    inline function get_index(): Int {
        return Std.int( pos );
    }
    inline function set_index( id: Int ): Int {
        pos = id;
        return id;
    }
    public var pos( get, set ): Int;
    inline function get_pos(): Int {
        return this[ 0 ];
    }
    inline function set_pos( pos_: Int ): Int {
        this[ 0 ] = pos_;
        return pos_;
    }
    public inline function hasNext() return pos < length;
    public inline function next(): Int {
        pos = pos + 1.;
        return pos;
    }
    @:op([])
    //@:arrayAccess
    public inline function readItem( k: Int ): Int {
      return this[ index*4 + k ];
    }
    @:op([])
    //@:arrayAccess
    public inline function writeItem( k: Int, v: Int ): Int {
        this[ index*4 + k ] = v;
        return v;
    }
    
    @:op(A++) public inline function increment() {
        return next();
    }
    public inline function getArray(): Int16Array {
        return this.subarray( 1, this.length - 1 );
    }
}
