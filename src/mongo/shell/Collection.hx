package mongo.shell;

extern class Collection<T> {
	public function count(query:Dynamic, ?options:Dynamic):Int;
	
	public function find(?query:Dynamic, ?projection:Dynamic):Cursor<T>;
	
	@:overload(function(doc:Array<T>, ?options:InsertOptions):BulkWriteResult {})
	public function insert(doc:T, ?options:InsertOptions):WriteResult;
	
	public function update(query:Dynamic, update:Dynamic, ?options:UpdateOptions):WriteResult;
	public function save(doc:T, ?options:SaveOptions):WriteResult;
	@:overload(function(query:Dynamic, justOne:Bool):WriteResult {})
	public function remove(query:Dynamic, ?options:RemoveOptions):WriteResult;
	public function drop():Bool;
	public function createIndex(keys:Dynamic, options:CreateIndexOptions):Dynamic;
	
	public function initializeUnorderedBulkOp():Bulk<T>;
	public function initializeOrderedBulkOp():Bulk<T>;
	
	public function getName():String;
}

typedef InsertOptions = {
	writeConcern:Dynamic,
	ordered:Bool
}

typedef UpdateOptions = {
	upsert:Bool,
	multi:Bool,
	writeConcern:WriteConcern
}
typedef SaveOptions = {
	writeConcern:WriteConcern
}
typedef RemoveOptions = {
	justOne:Bool,
	writeConcern:WriteConcern
}

typedef CreateIndexOptions = {
	?background:Bool,
	?unique:Bool,
	?name:String,
	?partialFilterExpression:Dynamic, // TODO: type
	?sparse:Bool,
	?expireAfterSeconds:Int,
	?storageEngine:Dynamic,
}

typedef CreateTextIndexOptions = {
	> CreateIndexOptions,
	?weights:Dynamic,
	?default_language:String,
	?language_override:String,
	?textIndexVersion:Int,
}

typedef Create2dSphereIndexOptions = {
	> CreateIndexOptions,
	// 2dsphereIndexVersion:Int,
}

typedef Create2dIndexOptions = {
	> CreateIndexOptions,
	bits:Int,
	min:Float,
	max:Float,
}
typedef CreateGeoHaystackIndexOptions = {
	> CreateIndexOptions,
	bucketSize:Float,
}

typedef WriteConcern = {
	w:Dynamic,
	j:Bool,
	wtimeout:Float,
}