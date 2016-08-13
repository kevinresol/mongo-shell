package mongo.shell;

@:native('Database')
extern class Database {
	@:overload(function(options:{user:String, pwd:String, machanism:String, digestPassword:Bool}):Int {})
	public function auth(username:String, password:String):Int;
	public function adminCommand<T>(cmd:Dynamic):T;
	public function getCollectionNames():Array<String>;
	public function getUsers():Array<Dynamic>;
	public function getRoles(opt:Dynamic):Array<Dynamic>;
	public function getSiblingDB(name:String):Database;
}