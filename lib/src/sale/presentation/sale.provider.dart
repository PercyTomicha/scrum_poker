import '../../../shared/utils/session.temporal.dart';
import '../domain/sale.repository.dart';

class SaleProvider {
  final SaleRepository _repository = SaleRepository();
  Future<void> createSale(String name) async {
    SessionTemporal.updateType(SessionType.ScrumMaster);
    await _repository.createSale(name);
  }

  Future<void> joinSale(String code) async {
    await SessionTemporal.updateType(SessionType.Developer);
    await _repository.joinSale(code);
  }
}