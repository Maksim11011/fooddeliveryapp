import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';
import 'cart_item.dart';

class Restaurant extends ChangeNotifier {
  // Список  меню
  final List<Food> _menu = [
    // Бургеры>
    Food(
      name: 'Бургер с беконом',
      description: 'Вкусный бургер с обжареным беконом, котлетой и овощами',
      imagePath: "lib/images/burgers/becon_burger.jpg",
      price: 99.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Острый соус', price: 25.0),
        Addon(name: 'Доп. сыр', price: 30.0),
        Addon(name: 'Доп. котлета', price: 50.0),
      ],
    ),
    Food(
      name: 'Большой бургер',
      description:
          'Сочный Бургер с двойной котлейтой, двойным сыром, овощами и специальным соусом',
      imagePath: "lib/images/burgers/big_burger.jpg",
      price: 140.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Острый соус', price: 25.0),
        Addon(name: 'Доп. сыр', price: 30.0),
        Addon(name: 'Доп. котлета', price: 50.0),
      ],
    ),
    Food(
      name: 'Гамбургер',
      description:
          'Классический гамбургер с говяжьей котлейтой, сыром и овощами',
      imagePath: "lib/images/burgers/burger.jpg",
      price: 88.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Супер соус', price: 15.0),
        Addon(name: 'Доп. сыр', price: 30.0),
        Addon(name: 'Доп. котлета', price: 40.0),
      ],
    ),
    Food(
      name: 'Чикенбургер',
      description:
          'Бургер наполнен куриной котлетой, сыром, овощами и кисло-сладким соусом',
      imagePath: "lib/images/burgers/chicken_burger.jpg",
      price: 120.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Супер соус', price: 25.0),
        Addon(name: 'Доп. сыр', price: 30.0),
        Addon(name: 'Доп. котлета', price: 50.0),
      ],
    ),
    Food(
      name: 'Топ Бургер',
      description:
          'Мраморная говядина японских коров, китайские овощи ,швейцарский сыр',
      imagePath: "lib/images/burgers/top_burger.jpg",
      price: 466.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Супер соус', price: 99.0),
        Addon(name: 'Доп. сыр', price: 175.0),
        Addon(name: 'Доп. котлета', price: 250.0),
      ],
    ),

    // Салаты
    Food(
      name: 'Салат Океан',
      description: 'Креветки, яйцо, кольца кальмара, авокадо',
      imagePath: "lib/images/salads/salad_1.jpg",
      price: 240.0,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Острая заправка', price: 80.0),
        Addon(name: 'Орехи', price: 70.0),
        Addon(name: 'Витаминный сироп', price: 140.0),
      ],
    ),
    Food(
      name: 'Салат Море',
      description: 'Болгарский перец, копченая форель, помидоры черри, сыр',
      imagePath: "lib/images/salads/salad_2.jpg",
      price: 190.0,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Доп. креветки', price: 80.0),
        Addon(name: 'Доп. кальмар', price: 70.0),
        Addon(name: 'Лимонный сироп', price: 140.0),
      ],
    ),
    Food(
      name: 'Середина лета',
      description: 'Помидоры, сыр, кунжут, клубника',
      imagePath: "lib/images/salads/salad_3.jpg",
      price: 322.0,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Заправка йогуртом', price: 120.0),
        Addon(name: 'Орехи', price: 70.0),
        Addon(name: 'Двойные ягоды', price: 130.0),
      ],
    ),
    Food(
      name: 'Утренний',
      description: 'Авокадо, зелень, манго, гранат',
      imagePath: "lib/images/salads/salad_1.jpg",
      price: 360.0,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Острая заправка', price: 80.0),
        Addon(name: 'Кедровые орешки', price: 120.0),
        Addon(name: 'Специальынй соус', price: 99.0),
      ],
    ),
    Food(
      name: 'Мясной',
      description: 'Мясо ягненка, листья салата, черри, сыр',
      imagePath: "lib/images/salads/salad_1.jpg",
      price: 560.0,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Острая заправка', price: 80.0),
        Addon(name: 'Специальынй соус', price: 96.0),
        Addon(name: 'Доп. мясо', price: 350.0),
      ],
    ),

    // Соусы, гарниры
    Food(
      name: 'Набор соусов',
      description: 'Соевый, аджика, тартар, спайси',
      imagePath: "lib/images/sides/sauces_1.jpg",
      price: 300.0,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Паштет', price: 150.0),
        Addon(name: 'Сырный соус', price: 70.0),
        Addon(name: 'Багет', price: 60.0),
      ],
    ),
    Food(
      name: 'Халапеньо & травы',
      description: 'Отсрый соус с халапеньо душистыми травами ',
      imagePath: "lib/images/sides/sauces_2.jpg",
      price: 180.0,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Хрен', price: 40.0),
        Addon(name: 'Базилик', price: 40.0),
        Addon(name: 'Сало', price: 90.0),
      ],
    ),
    Food(
      name: 'Гарнир на выбор',
      description: 'Макароны, Фасоль, Рис',
      imagePath: "lib/images/sides/sauces_3.jpg",
      price: 250.0,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Багет', price: 60.0),
      ],
    ),
    Food(
      name: 'Картофель Фри',
      description: 'Жареный картофель подается с чесночным соусом',
      imagePath: "lib/images/sides/sauces_4.jpg",
      price: 290.0,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Соус Карри', price: 80.0),
        Addon(name: 'Соус Кисло-сладкий', price: 96.0),
        Addon(name: 'Соус Ранчо', price: 350.0),
      ],
    ),
    Food(
      name: 'Альтернативная закуска',
      description: 'Брокколи с сырными шарика',
      imagePath: "lib/images/sides/sauces_1.jpg",
      price: 280.0,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Острый соус', price: 40.0),
        Addon(name: 'Соус Сырный', price: 50.0),
        Addon(name: 'Соус Барбекю', price: 350.0),
      ],
    ),

    // Десерты
    Food(
      name: 'Чизкейк',
      description: '',
      imagePath: "lib/images/desserts/dessert_1.jpg",
      price: 280.0,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Шоколадная заправка', price: 70.0),
        Addon(name: 'Ванильная заправка', price: 70.0),
        Addon(name: 'Двойной шоколад', price: 70.0),
      ],
    ),
    Food(
      name: 'Стакан Мороженого',
      description: 'Мороженое, сливки, печенье',
      imagePath: "lib/images/desserts/dessert_2.jpg",
      price: 220.0,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Шоколадная крошка', price: 35.0),
        Addon(name: 'Двойные сливки', price: 40.0),
        Addon(name: 'Мороженое Х2', price: 70.0),
      ],
    ),
    Food(
      name: 'Бокал Мороженого',
      description: 'Сливки, мороженое, печенье, нуга, сироп на выбор',
      imagePath: "lib/images/desserts/dessert_3.jpg",
      price: 260.0,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Шоколадный сироп', price: 40.0),
        Addon(name: 'Клубничный сироп', price: 40.0),
        Addon(name: 'Двойное мороженое', price: 70.0),
      ],
    ),
    Food(
      name: 'Джелато',
      description: 'Мороженое, суфле, сыр, пирожное, трубочка сахарная',
      imagePath: "lib/images/desserts/dessert_4.jpg",
      price: 330.0,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Ягодный сироп', price: 75.0),
        Addon(name: 'Сахарная пудра', price: 60.0),
        Addon(name: 'Двойной шоколад', price: 70.0),
      ],
    ),
    Food(
      name: 'Франуса',
      description: 'Нежный торт с печеньем и черносливом',
      imagePath: "lib/images/desserts/dessert_5.jpg",
      price: 380.0,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Доп. Фрукты', price: 70.0),
        Addon(name: 'Орехи', price: 90.0),
        Addon(name: 'Двойной шоколад', price: 70.0),
      ],
    ),

    // Напитки
    Food(
      name: 'Сок',
      description: 'Свежевыжитый сок',
      imagePath: "lib/images/drinks/drink_1.jpg",
      price: 250.0,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Со льдом', price: 0.0),
      ],
    ),
    Food(
      name: 'Мохито',
      description: 'Лайм, мята, сироп, содовая',
      imagePath: "lib/images/drinks/drink_2.jpg",
      price: 250.0,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Канапе из фруктов', price: 220.0),
      ],
    ),
    Food(
      name: 'Фруктовый Лимонад',
      description: '',
      imagePath: "lib/images/drinks/drink_3.jpg",
      price: 350.0,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Со льдом', price: 0.0),
      ],
    ),
    Food(
      name: 'Апероль',
      description: 'Апероль, просекко, апельсин, минеральная вода, лед',
      imagePath: "lib/images/drinks/drink_4.jpg",
      price: 280.0,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Апельсиный сок', price: 0.0),
        Addon(name: 'Грейпфруктовый сок', price: 0.0),
      ],
    ),
    Food(
      name: 'Солнечная клубника',
      description: 'Клубника, лайм, мята',
      imagePath: "lib/images/drinks/drink_5.jpg",
      price: 230.0,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Со льдом', price: 0.0),
      ],
    ),
  ];

/*

Г Е Т Т Е Р Ы

*/

  List<Food> get menu => _menu;

/*

О П Е Р А Т О Р Ы

*/
// Корзина пользователь
  final List<CartItem> _cart = [];

//  Добавить в корзину
  void addToCart(Food food, List<Addon> selectedAddons) {
    // Посмотреть, есть ли товар уже в корзине с выбранными едой и дополнениями
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // Проверить одинакова ли еда в заказе
      bool isSameFood = item.food == food;

      // Проверть одинаковы ли дополнения к еде
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // Если товар существует - увеличить количество
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // В противном случае добавить новый товар в корзину
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

//  Удалить из корзины
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != 1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
      notifyListeners();
    }
  }

//  Получить общую стоимость в корзине
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

//  Получить общщее количество товаров в корзине
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

//  Очистить корзину
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

/*

Х Е Л П Е Р Ы

*/

// Генератор квитанции

// Форматирование двойного значения в деньги

// Форматировать список дополнений в строковое резюме
}
