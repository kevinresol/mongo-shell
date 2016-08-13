package mongo.shell;

typedef WriteResult = {
	_id:Dynamic,
	nInserted:Int,
	nMatched:Int,
	nModified:Int,
	nUpserted:Int,
	nRemoved:Int,
	writeError:{
		code:Int,
		errmsg:String,
	},
	writeConcernError:{
		code:Int,
		errInfo:Dynamic,
		errmsg:String,
	}
}
