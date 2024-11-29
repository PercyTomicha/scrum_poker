import '../data/item.model.dart';
import '../data/item.firebase.dart';
import '../../../shared/utils/session.temporal.dart';

class ItemRepository {
  final ItemFirebaseDataProvider saleDataProvider = ItemFirebaseDataProvider();
  
  createItem(String name, String type) async {
    final id = itemDB.doc().id;
    final sale = ItemModel(
        id: id,
        name: name,
        type: type,
        estimate: 0,
        idSale: SessionTemporal.sale!.id,
        idDeveloper: '');
    await saleDataProvider.createItem(sale);
  }
}