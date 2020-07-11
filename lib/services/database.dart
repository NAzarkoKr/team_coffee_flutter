import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference coffeCollection =
      Firestore.instance.collection('coffee');

  Future updateUserData(String sugars, String name, int strength) async {
    return await coffeCollection.document(uid).setData({
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }
}
