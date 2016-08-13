package mongo.shell;

typedef BulkWriteResult = {
	nInserted:Int,
	nMatched:Int,
	nModified:Int,
	nUpserted:Int,
	nRemoved:Int,
	upserted:{
		index:Int,
		_id:Dynamic,
	},
	writeErrors:Array<{
		index:Int,
		code:Int,
		errmsg:String,
		op:Dynamic,
	}>,
	writeConcernError:{
		code:Int,
		errInfo:Dynamic,
		errmsg:String,
	}
}
