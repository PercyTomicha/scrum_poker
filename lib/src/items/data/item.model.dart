class ItemModel {
  final String id;
  final String name;
  final String type;
  final int estimate;
  final String idSale;
  final String idDeveloper;
  ItemModel(
      {required this.id,
      required this.name,
      required this.type,
      required this.estimate,
      required this.idSale,
      required this.idDeveloper});

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      estimate: json['estimate'],
      idSale: json['idSale'],
      idDeveloper: json['idDeveloper']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'estimate': estimate,
        'idSale': idSale,
        'idDeveloper': idDeveloper,
      };
}
