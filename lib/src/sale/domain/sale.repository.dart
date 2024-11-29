import '../data/sale.model.dart';
import '../data/sale.firebase.dart';
import '../../../shared/utils/code_generator.dart';

class SaleRepository {
  final SaleFirebaseDataProvider saleDataProvider = SaleFirebaseDataProvider();
  
  createSale(String name) async {
    final id = saleDB.doc().id;
    final code = CodeGenerator.generate();
    final sale = SaleModel(
        id: id, name: name, code: code, status: 0, idSelectedItem: '');
    await saleDataProvider.createSale(sale);
  }
}