import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Стиль текста
    final myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    final mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Стоимость доставки
          Column(
            children: [
              Text(
                '99р',
                style: myPrimaryTextStyle,
              ),
              Text(
                'Стоимость доставки',
                style: mySecondaryTextStyle,
              ),
            ],
          ),

          // Время доставки
          Column(
            children: [
              Text(
                '45 мин',
                style: myPrimaryTextStyle,
              ),
              Text(
                'Время доставки',
                style: mySecondaryTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
