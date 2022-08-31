class DataModel {
  String name;
  String img;
  int price;
  int people;
  int starts;
  String description;
  String location;
  DataModel(
      {required this.name,
      required this.img,
      required this.price,
      required this.people,
      required this.starts,
      required this.description,
      required this.location});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        name: json["name"],
        img: json["img"],
        price: json["price"],
        people: json["people"],
        starts: json["starts"],
        description: json["description"],
        location: json["location"]);
  }
}
