import '../../../shared/utils/session.temporal.dart';
import '../domain/sale.repository.dart';

class SaleProvider {
  final SaleRepository _repository = SaleRepository();
  void createSale(String name) {
    SessionTemporal.updateType(SessionType.ScrumMaster);
    _repository.createSale(name);
  }
}