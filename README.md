# mongo-shell

Externs and helpers for writing mongo shell scripts in Haxe

## Work in progress (Help wanted)

The mongo shell API is huge and each extern methods are manually added.
For now I will add those most frequently used and for others I will leave them behind until someone needs them.

## Usage

```haxe
import mongo.shell.*;
import mongo.shell.MongoShell.*; // fuctions like init(), printjson() becomes global

class RunTests {

  static function main() {
    
    // setup the environment:
    init();
    
    // create a mongo connection
    var mongo = new Mongo();
    var db:MyDatabase = mongo.getDB('test');
    
    // or use `connect()`:
    // var db:MyDatabase = connect('mongodb://localhost:27017/test');
    
    // insert some documents:
    db.persons.insert({_id: new ObjectId(), name:'kevinresol', date: Date.now()});
    
    // retrieve them:
    for(doc in db.persons.find({})) printjson(doc);
  }
  
}

extern class MyDatabase extends Database {
  public var persons:Collection<Person>;
}

typedef Person = {
  _id:ObjectId,
  name:String,
  date:Date,
}
```

More examples will be added soon...