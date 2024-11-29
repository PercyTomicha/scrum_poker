import '../../src/sale/data/sale.model.dart';

enum SessionType {ScrumMaster, Developer}

class SessionTemporal {
  static SessionType type = SessionType.ScrumMaster;
  static SaleModel? sale;

  static updateType(SessionType newType) {
    type = newType;
  }

  static updateSaleData(SaleModel saleData) {
    sale = saleData;
  }
}