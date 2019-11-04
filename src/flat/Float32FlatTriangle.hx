package flat;
import flat.Float32Flat9;
// effectively 2D with z coordinates for depth etc... at the moment.
@:forward
abstract Float32FlatTriangle( Float32Flat9 ){
    public inline function new( len: Int ){
        this = new Float32Flat9( len );
    }
    public var ax( get, set ): Float;
    function get_ax(): Float {
        return this[ 0 ];
    }
    function set_ax( v: Float ): Float {
        this[ 0 ] = v;
        return v;
    }
    public var ay( get, set ): Float;
    function get_ay(): Float {
        return this[ 1 ];
    }
    function set_ay( v: Float ): Float {
        this[ 1 ] = v;
        return v;
    }
    public var az( get, set ): Float;
    function get_az(): Float {
        return this[ 2 ];
    }
    function set_az( v: Float ): Float {
        this[ 2 ] = v;
        return v;
    }
    public var bx( get, set ): Float;
    function get_bx(): Float {
        return this[ 3 ];
    }
    function set_bx( v: Float ): Float {
        this[ 3 ] = v;
        return v;
    }
    public var by( get, set ): Float;
    function get_by(): Float {
        return this[ 4 ];
    }
    function set_by( v: Float ): Float {
        this[ 4 ] = v;
        return v;
    }
    public var bz( get, set ): Float;
    function get_bz(): Float {
        return this[ 5 ];
    }
    function set_bz( v: Float ): Float {
        this[ 5 ] = v;
        return v;
    }
    public var cx( get, set ): Float;
    function get_cx(): Float {
        return this[ 6 ];
    }
    function set_cx( v: Float ): Float {
        this[ 6 ] = v;
        return v;
    }
    public var ay( get, set ): Float;
    function get_by(): Float {
        return this[ 7 ];
    }
    function set_by( v: Float ): Float {
        this[ 7 ] = v;
        return v;
    }
    public var cz( get, set ): Float;
    function get_cz(): Float {
        return this[ 8 ];
    }
    function set_cz( v: Float ): Float {
        this[ 8 ] = v;
        return v;
    }
    public function triangle( ax_: Float, ay_: Float, az_: Float
                            , bx_: Float, by_: Float, bz_: Float
                            , cx_: Float, cy_: Float, cz_ : Float ){
        ax = ax_;
        ay = ay_;
        az = az_;
        bx = bx_;
        by = by_;
        bz = bz_;
        cx = cx_;
        cy = cy_;
        cz = cz_;
        // assume shape is 2D with depth at moment.
        windingAdjusted = adjustWinding();
        if( windingAdjusted ){
            ax = ax_;
            ay = ay_;
            bx = cx_;
            by = cy_;
            cx = bx_;
            cy = by_;
        }
    }
    public function adjustWinding():Bool { // check sign
        return ( (ax * by - bx * ay) + (bx * cy - cx * by) + (cx * ay - ax * cy) )>0;
    }
    public var x( get, set ): Float;
    function get_x() {
        return Math.min( Math.min( ax, bx ), cx );
    }
    function set_x( x: Float ): Float {
        var dx = x - get_x();
        ax = ax + dx;
        bx = bx + dx;
        cx = cx + dx;
        return x;
    }
    public var y( get, set ): Float;   
    function get_y(): Float {
        return Math.min( Math.min( ay, by ), cy );
    }
    function set_y( y: Float ): Float {
        var dy = y - get_y();
        ay = ay + dy;
        by = by + dy;
        cy = cy + dy;
        return y;
    }
    public var right( get, never ): Float;
    public function get_right(): Float {
        return Math.max( Math.max( ax, bx ), cx );
    }
    public var bottom( get, never ): Float;
    public function get_bottom(): Float {
        return Math.max( Math.max( ay, by ), cy );
    }
    function moveDelta( dx: Float, dy: Float ){
        ax += dx;
        ay += dy;
        bx += dx;
        by += dy;
        cx += dx;
        cy += dy;
    }
    // no bounds checking
    public inline function liteHit( px: Float, py: Float ): Bool {
        var planeAB = ( ax - px )*( by - py ) - ( bx - px )*( ay - py );
        var planeBC = ( bx - px )*( cy - py ) - ( cx - px )*( by - py );
        var planeCA = ( cx - px )*( ay - py ) - ( ax - px )*( cy - py );
        return Algebra.sign( planeAB ) == Algebra.sign( planeBC ) && Algebra.sign( planeBC ) == Algebra.sign( planeCA );
    }
    //http://www.emanueleferonato.com/2012/06/18/algorithm-to-determine-if-a-point-is-inside-a-triangle-with-mathematics-no-hit-test-involved/
    public function fullHit( px: Float, py: Float ): Bool {
        if( px > x && px < right && py > y && py < bottom ) return true;
        return liteHit( px, py );
    }
    public inline 
    function rotate( x: Float, y: Float, theta: Float ){
        var cos = Math.cos( theta );
        var sin = Math.sin( theta );
        rotateTrig( x, y, cos, sin );
    }
    public inline 
    function rotateTrig( x: Float, y: Float, cos: Float, sin: Float ){
        ax -= x;
        ay -= y;
        bx -= x;
        by -= y;
        cx -= x;
        cy -= y;
        var dx: Float;
        var dy: Float;
        dx  = ax;
        dy  = ay;
        ax  = dx * cos - dy * sin;
        ay  = dx * sin + dy * cos; 
        dx  = bx;
        dy  = by;
        bx  = dx * cos - dy * sin;
        by  = dx * sin + dy * cos; 
        dx  = cx;
        dy  = cy;
        cx  = dx * cos - dy * sin;
        cy  = dx * sin + dy * cos;
        ax += x;
        ay += y;
        bx += x;
        by += y;
        cx += x;
        cy += y;
    }
}
