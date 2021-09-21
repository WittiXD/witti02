import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class LocalDB {
  String dbname = "CED";

  Future<Database> ConnectDB() async {
    var directorry = await getApplicationDocumentsDirectory();

    print(directorry);

    dynamic location = join(directorry.path, this.dbname);

    print(directorry);

    var createDB = databaseFactoryIo;
    var db = createDB.openDatabase(location);

    print(db);

    return db;
  }

  Future<void> Register(name, sName, email, password) async {

    //print("$name,$sName,$email,$password");

    var dB = await this.ConnectDB();
    var store = intMapStoreFactory.store('user');

    var data = store.add(dB, {
      'txtName': name,
      'txtsName': sName,
      'txtEmail': email,
      'txtPassword': password,
      'txtphone': 0123456789,
    }).then((value){
      print('$value สำเร็จ');
    }).catchError((error){
      print(error);
    });

    var user = await store.find(dB);
    print(user);


    dB.close();
  }


  Future<bool> Login(email, password) async {
    var db = await this.ConnectDB();
    var store = intMapStoreFactory.store('user');
    var user = await store.find(db);

    for (var item in user) {
      // print(item['name']);
      if (item['email'] == email && item['password'] == password) {
        // print('success');
        return true;
      }
    }

    return false;
  }
  
}
