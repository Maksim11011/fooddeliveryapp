class Food {
  final String name; //  имя бургера
  final String description; //  описание описание бургера
  final String imagePath; //  lib/images/burger.jpg
  final double price; //  99р
  final FoodCategory category; // бургер
  List<Addon> availableAddons; // [Супер соус, Доп.сыр, Доп.котлета]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

// Категории еды
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// Дополнения к еде
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
