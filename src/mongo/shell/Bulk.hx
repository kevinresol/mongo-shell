package mongo.shell;

import mongo.shell.bulk.*;

extern class Bulk<T> {
	public function insert(item:T):Void;
	public function find():Find<T>;
	public function execute():BulkWriteResult;
	public function getOperations():Dynamic;
	public function tojson():Dynamic;
	public function toString():String;
}