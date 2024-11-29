import '../domain/item.repository.dart';

class ItemProvider {
  final ItemRepository _repository = ItemRepository();
  Future<void> createItem(String name, String type) async {
    await _repository.createItem(name, type);
  }
}