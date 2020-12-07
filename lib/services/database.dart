import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:house/models/house.dart';

class DatabaseService{
  final String uid;
  DatabaseService({this.uid});
  final CollectionReference houseCollection = Firestore.instance.collection(
    'houses'
  );
  Future updateUserData(String price, String location) async {
    return await houseCollection.document(uid).setData({
      'price': price,
      'location': location,
    });
  }
  // house list from snapshot
  List<House> _houseListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
    return House(
      price:doc.data['price']?? '0',  
      location:doc.data['location']?? '',
    );
    }).toList();
  }


  Stream<List<House>> get houses {
    return houseCollection.snapshots().
    map(_houseListFromSnapshot);
  }
}