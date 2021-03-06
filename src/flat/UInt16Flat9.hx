package flat;
import haxe.io.UInt16Array; 
@:forward
abstract UInt16Flat9( UInt16Flat ) {
    @:op([]) public inline 
    function readItem( k: Int ): UInt {
      return this.readItem( pos*9 + k );
    }
    @:op([]) public inline 
    function writeItem( k: Int, v: UInt ): UInt {
        this.writeItem( pos*9 + k, v );
        return v;
    }
    public inline 
    function new( len: Int ){
        this = new UInt16Flat( len );
    }
    public var pos( get, set ): UInt;
    inline
    function get_pos(): Int {
        return this.pos;
    }
    inline
    function set_pos( id: Int ): UInt {
        this.pos = id;
        return id;
    }
    public inline
    function getArray(): UInt16Array {
        return this.subarray( 2, this.length*9 + 2 );
    }
}