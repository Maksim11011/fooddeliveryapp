import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Добавить адрес'),
        content: const TextField(
          decoration: InputDecoration(hintText: 'Город, улица, дом'),
        ),
        actions: [
          // Кнопка отменить
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Отменить'),
          ),

          // Кнопка сохранить
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Сохранить'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Адрес доставки',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // Адрес
                Text(
                  'Дворцовая площадь, 1',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Выпадабщее меню
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
