package mongo.shell;

extern class Cursor<T> {
	public function hasNext():Bool;
	public function next():T;
	public function forEach(f:T->Void):Void;
	
	public function limit(v:Int):Cursor<T>;
	public function skip(v:Int):Cursor<T>;
	public function sort(sort:{}):Cursor<T>;
	
	public function pretty():Cursor<T>;
	public function toArray():Array<T>;
}