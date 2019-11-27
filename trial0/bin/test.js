// Generated by Haxe 4.0.2
(function ($global) { "use strict";
var Main = function() { };
Main.main = function() {
	var argb = [-7077677,-11861886,-16776961,-16711936,-256,-33024,-65536,-16777216,-12303292,-13421773,-15987700,-15658735,-1];
	var this1 = new Float32Array(100);
	var this2 = this1;
	this2[0] = 0.;
	this2[1] = 0.;
	var this3 = this2;
	var this4 = this3;
	var arrayTri = this4;
	var this5 = new Float32Array(100);
	var this6 = this5;
	this6[0] = 0.;
	this6[1] = 0.;
	var this7 = this6;
	var this8 = this7;
	var arrayColor = this8;
	var _g = 0;
	while(_g < argb.length) {
		var c = argb[_g];
		++_g;
		console.log("Main.hx:35:","c " + StringTools.hex(c));
		flat__$Float32FlatRGBA_Float32FlatRGBA_$Impl_$.set_red(arrayColor,(c >> 16 & 255) / 255);
		var v = (c & 255) / 255;
		arrayColor[Std.int(arrayColor[0]) * 4 + 2 + 2] = v;
		var v1 = (c >> 8 & 255) / 255;
		arrayColor[Std.int(arrayColor[0]) * 4 + 1 + 2] = v1;
		var v2 = (c >> 24 & 255) / 255;
		arrayColor[Std.int(arrayColor[0]) * 4 + 3 + 2] = v2;
		var pos_ = arrayColor[0] + 1.;
		arrayColor[0] = pos_;
		if(arrayColor[0] > arrayColor[1]) {
			arrayColor[1] = arrayColor[0];
		}
	}
	console.log("Main.hx:39:","arrayColor " + Std.int(arrayColor[1]));
	console.log("Main.hx:40:","arrayColor list of colors contained as r, g, b, a Floats ");
	arrayColor[0] = 0;
	if(arrayColor[0] > arrayColor[1]) {
		arrayColor[1] = arrayColor[0];
	}
	console.log("Main.hx:42:",Std.int(arrayColor[1]));
	console.log("Main.hx:43:","start ");
	var _g1 = 0;
	var _g2 = Std.int(arrayColor[1]);
	while(_g1 < _g2) {
		var i = _g1++;
		console.log("Main.hx:45:","arrayColor.pos " + arrayColor[0]);
		console.log("Main.hx:46:",i + " " + ("0x" + StringTools.hex(Math.round(arrayColor[Std.int(arrayColor[0]) * 4 + 3 + 2] * 255) << 24 | Math.round(flat__$Float32FlatRGBA_Float32FlatRGBA_$Impl_$.get_red(arrayColor) * 255) << 16 | Math.round(arrayColor[Std.int(arrayColor[0]) * 4 + 1 + 2] * 255) << 8 | Math.round(arrayColor[Std.int(arrayColor[0]) * 4 + 2 + 2] * 255))));
		console.log("Main.hx:47:",StringTools.hex(argb[i]));
		var pos_1 = arrayColor[0] + 1.;
		arrayColor[0] = pos_1;
		if(arrayColor[0] > arrayColor[1]) {
			arrayColor[1] = arrayColor[0];
		}
	}
	arrayColor[0] = 0;
	if(arrayColor[0] > arrayColor[1]) {
		arrayColor[1] = arrayColor[0];
	}
	var str = "Float32FlatRGBA: \n";
	var _g3 = 0;
	var _g11 = Std.int(arrayColor[1]);
	while(_g3 < _g11) {
		var i1 = _g3++;
		str += "0x" + StringTools.hex(Math.round(arrayColor[Std.int(arrayColor[0]) * 4 + 3 + 2] * 255) << 24 | Math.round(flat__$Float32FlatRGBA_Float32FlatRGBA_$Impl_$.get_red(arrayColor) * 255) << 16 | Math.round(arrayColor[Std.int(arrayColor[0]) * 4 + 1 + 2] * 255) << 8 | Math.round(arrayColor[Std.int(arrayColor[0]) * 4 + 2 + 2] * 255)) + "\n";
		var pos_2 = arrayColor[0] + 1.;
		arrayColor[0] = pos_2;
		if(arrayColor[0] > arrayColor[1]) {
			arrayColor[1] = arrayColor[0];
		}
	}
	arrayColor[0] = 0;
	if(arrayColor[0] > arrayColor[1]) {
		arrayColor[1] = arrayColor[0];
	}
	console.log("Main.hx:50:",str);
	console.log("Main.hx:51:","end ");
	console.log("Main.hx:52:","pos " + arrayColor[0]);
	var arr = arrayColor.subarray(2,Std.int(arrayColor[1]) * 4 + 2);
	var _g31 = 0;
	var _g4 = arr.length;
	while(_g31 < _g4) {
		var i2 = _g31++;
		console.log("Main.hx:56:","i " + i2);
		console.log("Main.hx:57:",StringTools.hex(Math.round(arr[i2] * 255)));
	}
};
var Std = function() { };
Std.int = function(x) {
	return x | 0;
};
var StringTools = function() { };
StringTools.hex = function(n,digits) {
	var s = "";
	var hexChars = "0123456789ABCDEF";
	while(true) {
		s = hexChars.charAt(n & 15) + s;
		n >>>= 4;
		if(!(n > 0)) {
			break;
		}
	}
	if(digits != null) {
		while(s.length < digits) s = "0" + s;
	}
	return s;
};
var flat__$Float32FlatRGBA_Float32FlatRGBA_$Impl_$ = {};
flat__$Float32FlatRGBA_Float32FlatRGBA_$Impl_$.get_red = function(this1) {
	return this1[Std.int(this1[0]) * 4 + 2];
};
flat__$Float32FlatRGBA_Float32FlatRGBA_$Impl_$.set_red = function(this1,v) {
	this1[Std.int(this1[0]) * 4 + 2] = v;
	return v;
};
var flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$ = {};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_ax = function(this1) {
	return this1[Std.int(this1[0]) * 9 + 2];
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_ax = function(this1,v) {
	this1[Std.int(this1[0]) * 9 + 2] = v;
	return v;
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_ay = function(this1) {
	return this1[Std.int(this1[0]) * 9 + 1 + 2];
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_ay = function(this1,v) {
	this1[Std.int(this1[0]) * 9 + 1 + 2] = v;
	return v;
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_az = function(this1,v) {
	this1[Std.int(this1[0]) * 9 + 2 + 2] = v;
	return v;
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_bx = function(this1) {
	return this1[Std.int(this1[0]) * 9 + 3 + 2];
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_bx = function(this1,v) {
	this1[Std.int(this1[0]) * 9 + 3 + 2] = v;
	return v;
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_by = function(this1) {
	return this1[Std.int(this1[0]) * 9 + 4 + 2];
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_by = function(this1,v) {
	this1[Std.int(this1[0]) * 9 + 4 + 2] = v;
	return v;
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_bz = function(this1,v) {
	this1[Std.int(this1[0]) * 9 + 5 + 2] = v;
	return v;
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_cx = function(this1) {
	return this1[Std.int(this1[0]) * 9 + 6 + 2];
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_cx = function(this1,v) {
	this1[Std.int(this1[0]) * 9 + 6 + 2] = v;
	return v;
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_cy = function(this1) {
	return this1[Std.int(this1[0]) * 9 + 7 + 2];
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_cy = function(this1,v) {
	this1[Std.int(this1[0]) * 9 + 7 + 2] = v;
	return v;
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_cz = function(this1,v) {
	this1[Std.int(this1[0]) * 9 + 8 + 2] = v;
	return v;
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.triangle = function(this1,ax_,ay_,az_,bx_,by_,bz_,cx_,cy_,cz_) {
	flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_ax(this1,ax_);
	flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_ay(this1,ay_);
	flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_az(this1,az_);
	flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_bx(this1,bx_);
	flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_by(this1,by_);
	flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_bz(this1,bz_);
	flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_cx(this1,cx_);
	flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_cy(this1,cy_);
	flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_cz(this1,cz_);
	var windingAdjusted = flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.adjustWinding(this1);
	if(windingAdjusted) {
		flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_ax(this1,ax_);
		flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_ay(this1,ay_);
		flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_bx(this1,cx_);
		flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_by(this1,cy_);
		flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_cx(this1,bx_);
		flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.set_cy(this1,by_);
	}
	return windingAdjusted;
};
flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.adjustWinding = function(this1) {
	return flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_ax(this1) * flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_by(this1) - flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_bx(this1) * flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_ay(this1) + (flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_bx(this1) * flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_cy(this1) - flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_cx(this1) * flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_by(this1)) + (flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_cx(this1) * flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_ay(this1) - flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_ax(this1) * flat__$Float32FlatTriangle_Float32FlatTriangle_$Impl_$.get_cy(this1)) > 0;
};
var haxe_io_Bytes = function() { };
Main.main();
})({});