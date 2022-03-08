class Snack{
  int id;
  String name;
  double price;
  String categorie;
  String description;
  double rank;
  bool isFavorite;
  String img;

//<editor-fold desc="Data Methods">

  Snack({
    required this.id,
    required this.name,
    required this.price,
    required this.categorie,
    required this.description,
    required this.rank,
    this.isFavorite = false,
    required this.img,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Snack &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          price == other.price &&
          categorie == other.categorie &&
          description == other.description &&
          rank == other.rank &&
          isFavorite == other.isFavorite &&
          img == other.img);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      price.hashCode ^
      categorie.hashCode ^
      description.hashCode ^
      rank.hashCode ^
      isFavorite.hashCode ^
      img.hashCode;

  @override
  String toString() {
    return 'Snack{' +
        ' id: $id,' +
        ' name: $name,' +
        ' price: $price,' +
        ' categorie: $categorie,' +
        ' description: $description,' +
        ' rank: $rank,' +
        ' isFavorite: $isFavorite,' +
        ' img: $img,' +
        '}';
  }

  Snack copyWith({
    int? id,
    String? name,
    double? price,
    String? categorie,
    String? description,
    double? rank,
    bool? isFavorite,
    String? img,
  }) {
    return Snack(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      categorie: categorie ?? this.categorie,
      description: description ?? this.description,
      rank: rank ?? this.rank,
      isFavorite: isFavorite ?? this.isFavorite,
      img: img ?? this.img,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'price': this.price,
      'categorie': this.categorie,
      'description': this.description,
      'rank': this.rank,
      'isFavorite': this.isFavorite,
      'img': this.img,
    };
  }

  factory Snack.fromMap(Map<String, dynamic> map) {
    return Snack(
      id: map['id'] as int,
      name: map['name'] as String,
      price: map['price'] as double,
      categorie: map['categorie'] as String,
      description: map['description'] as String,
      rank: map['rank'] as double,
      isFavorite: map['isFavorite'] as bool,
      img: map['img'] as String,
    );
  }

//</editor-fold>
}