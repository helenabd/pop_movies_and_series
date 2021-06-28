class MovieGenre {
  MovieGenre({
    this.id,
    this.name,
  });

  final int id;
  final String name;

  factory MovieGenre.fromJson(Map<String, dynamic> json) => MovieGenre(
        id: json["id"],
        name: json["name"],
      );
}
