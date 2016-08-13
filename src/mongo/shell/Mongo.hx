package mongo.shell;

@:native('Mongo')
extern class Mongo {
	public function new(?host:String);
	public function getDB<T:Database>(dbName:String):T;
	
}