class SaleModel {
  final String id;
  final String name;
  final int code;
  final int status;
  final String idSelectedItem;
  SaleModel(
      {required this.id,
      required this.name,
      required this.code,
      required this.status,
      required this.idSelectedItem});

  factory SaleModel.fromJson(Map<String, dynamic> json) => SaleModel(
      id: json['id'],
      name: json['name'],
      code: json['code'],
      status: json['status'],
      idSelectedItem: json['idSelectedItem']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'code': code,
        'status': status,
        'idSelectedItem': idSelectedItem,
      };
}
