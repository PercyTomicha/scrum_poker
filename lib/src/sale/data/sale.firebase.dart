import 'package:cloud_firestore/cloud_firestore.dart';
import 'sale.model.dart';

final saleDB = FirebaseFirestore.instance.collection('sale');

class SaleFirebaseDataProvider{
  Future<SaleModel> createSale(SaleModel sale) async {
    await saleDB.doc(sale.id).set(sale.toJson()).then((_) {});
    return sale;
  }
}