enum CategoriesType {
  paper('paper', 'Papeles'),
  plastic('plastic', 'Plásticos'),
  brownGlass('brownGlass', 'Vidrios marrones'),
  greenGlass('greenGlass', 'Vidrios verdes'),
  whiteGlass('whiteGlass', 'Vidrios blancos'),
  metal('metal', 'Metales'),
  battery('battery', 'Baterías'),
  biological('biological', 'Biológicos'),
  trash('trash', 'Basuras'),
  cardboard('cardboard', 'Cartones'),
  shoes('shoes', 'Zapatos'),
  clothes('clothes', 'Ropas');

  final String imageName;
  final String categoryName;

  const CategoriesType(this.imageName, this.categoryName);

  static bool isCategory(String name) {
    return CategoriesType.values.any((e) => e.imageName == name);
  }

  static List<CategoriesType> getCategories() {
    return CategoriesType.values;
  }
}
