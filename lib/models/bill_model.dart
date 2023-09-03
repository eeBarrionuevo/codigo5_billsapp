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

  factory BillModel.fromJson(Map<String, dynamic> json) => BillModel(
        title: json["title"],
        price: json["price"],
        datetime: json["datetime"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "price": price,
        "datetime": datetime,
        "type": type,
      };
}
