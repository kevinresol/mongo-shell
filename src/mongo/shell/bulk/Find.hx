package mongo.shell.bulk;

extern class Find<T> {
	public function removeOne():Dynamic;
	public function remove():Dynamic;
	public function replaceOne():Dynamic;
	public function update():Dynamic;
	public function upsert():Dynamic;
}