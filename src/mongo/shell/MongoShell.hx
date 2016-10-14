package mongo.shell;

class MongoShell {
	
	public static var print:Dynamic;
	
	public static function init() {
		print = Reflect.makeVarArgs(_print);
		haxe.Log.trace = function(v, ?infos) {
			var values:Array<Dynamic> = [v];
			if(infos != null) {
				values.unshift(infos.fileName + ':' + infos.lineNumber + ':');
				if(infos.customParams != null) values = values.concat(infos.customParams);
			} 
			_print(values);
		}
	}
	
	public inline static function connect<T:Database>(?connectionString:String):T {
		return untyped __js__('connect({0})', connectionString);
	}
	
	inline static function _print(v:Array<Dynamic>) {
		untyped __js__('print.apply(undefined, {0})', v);
	}
	
	public inline static function printjson(v:Dynamic):Void {
		untyped __js__('printjson({0})', v);
	}
	
	public inline static function runProgram(args:Array<String>):Int {
		return untyped __js__('runProgram.apply(undefined, {0})', args);
	}
	
	public inline static function rawMongoProgramOutput():String {
		return untyped __js__('rawMongoProgramOutput()');
	}
	
	public inline static function clearRawMongoProgramOutput():Void {
		untyped __js__('clearRawMongoProgramOutput()');
	}
	
	public inline static function cat(v:String):String {
		return untyped __js__('cat({0})', v);
	}
	
	public inline static function sleep(f:Float):Void {
		return untyped __js__('sleep({0})', f);
	}
}