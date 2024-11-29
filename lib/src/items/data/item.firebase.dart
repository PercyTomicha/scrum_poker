import 'package:cloud_firestore/cloud_firestore.dart';
import 'item.model.dart';

final itemDB = FirebaseFirestore.instance.collection('item');

class ItemFirebaseDataProvider{
  Future<ItemModel> createItem(ItemModel item) async {
    await itemDB.doc(item.id).set(item.toJson()).then((_) {});
    return item;
  }
}