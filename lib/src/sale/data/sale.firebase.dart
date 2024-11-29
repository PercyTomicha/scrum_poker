import 'package:cloud_firestore/cloud_firestore.dart';
import 'sale.model.dart';
import '../../../shared/utils/session.temporal.dart';

final saleDB = FirebaseFirestore.instance.collection('sale');

class SaleFirebaseDataProvider{
  Future<SaleModel> createSale(SaleModel sale) async {
    await saleDB.doc(sale.id).set(sale.toJson()).then((_) {});
    return sale;
  }

  Future<void> joinSale(String code) async {
    await saleDB.doc(code).get().then((sale) {
      SessionTemporal.updateSaleData(SaleModel.fromJson(sale.data()!));
    });
  }
}