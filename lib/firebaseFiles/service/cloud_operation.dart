import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:training_session/model/data_model.dart';

class CloudOperation {
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  Future<void> addUser(UserDataModel user) async {
    return await userCollection.doc(user.uid).set(user.toJson());
  }

  Future<UserDataModel?> getUser(String uid) async {
    DocumentSnapshot doc = await userCollection.doc(uid).get();
    if (doc.exists) {
      return UserDataModel.fromJson(doc.data() as Map<String, dynamic>);
    }
    return null;
  }

  Future<void> updateUser(UserDataModel user) async {
    return await userCollection.doc(user.uid).update(user.toJson());
  }

  Future<void> deleteUser(String uid) async {
    return await userCollection.doc(uid).delete();
  }
}
