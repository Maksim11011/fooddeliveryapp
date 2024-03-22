import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';
import '../models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> seleectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    // Инициализировать нажатие на добавки как ложные
    for (Addon addon in food.availableAddons) {
      seleectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // Метод добавления в корзину
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    // Закрыть текущую страницу и вернуться в меню
    Navigator.pop(context);

    // Сформировать дополнения
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.seleectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    // Добавить в корзину
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Scaffold UI
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Картинка еды
                Image.asset(widget.food.imagePath),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Название еды
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),

                      // Стоимость еды
                      // Описание еды
                      Text(
                        '${widget.food.price}р',
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary),
                      ),

                      const SizedBox(height: 10),

                      // Описание еды
                      Text(widget.food.description),

                      const SizedBox(height: 10),

                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                      const SizedBox(height: 10),

                      // Дополнения к еде
                      Text(
                        'Дополнительно',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),

                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            // Добавить дополнения
                            Addon addon = widget.food.availableAddons[index];
                            // Возвращаем флажок UI
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '${addon.price}р',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              value: widget.seleectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.seleectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // КНопка добавления в корзину
                MyButton(
                    onTap: () => addToCart(widget.food, widget.seleectedAddons),
                    text: 'Добавить'),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),

        // Кнопка назад
        SafeArea(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_rounded),
              ),
            ),
          ),
        )
      ],
    );
  }
}
