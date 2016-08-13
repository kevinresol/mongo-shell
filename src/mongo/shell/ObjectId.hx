package mongo.shell;

@:native('ObjectId')
extern class ObjectId {
	public var str:String;
	@:selfCall public function new(?v:String);
	public function getTimestamp():Date;
	public function toString():String;
	public function valueOf():String;
}