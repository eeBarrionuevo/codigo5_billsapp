class BillModel {
  String title;
  double price;
  String datetime;
  String type;

  BillModel({
    required this.title,
    required this.price,
    required this.datetime,
    required this.type,
  });

  Map<String, dynamic> convertirAMap() => {
        "title": title,
        "price": price,
        "datetime": datetime,
        "type": type,
      };
}
