package flat;
import haxe.io.Int32Array; 
@:forward
abstract Int32Flat3( Int32Flat ) {
    @:op([]) public inline 
    function readItem( k: Int ): Int {
      return this.readItem( index*3 + k );
    }
    @:op([]) public inline 
    function writeItem( k: Int, v: Int ): Int {
        this.writeItem( index*3 + k, v );
        return v;
    }
    public inline 
    function new( len: Int ){
        this = new Int32Flat( len );
    }
    public var pos( get, set ): Int;
    inline
    function get_pos(): Int {
        return this.pos;
    }
    inline
    function set_pos( id: Int ): Int {
        this.pos = id;
        return id;
    }
    public inline
    function getArray(): Int32Array {
        return this.subarray( 2, this.length*3 + 2 );
    }
}
