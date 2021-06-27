class ProductionCountryModel {
  ProductionCountryModel({
    this.iso31661,
    this.name,
  });

  final String iso31661;
  final String name;

  factory ProductionCountryModel.fromJson(Map<String, dynamic> json) =>
      ProductionCountryModel(
        iso31661: json["iso_3166_1"],
        name: json["name"],
      );
}
