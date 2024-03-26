import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_cart_tile.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaraunt, child) {
        // Корзина
        final userCart = restaraunt.cart;

        // Scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text('Корзина'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // Кнопка очистки корзины
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Очистить корзину?'),
                        actions: [
                          // Кнопка отмена
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Отмена'),
                          ),
                          // Кнопка очистить
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              restaraunt.clearCart();
                            },
                            child: const Text('Очистить'),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete))
            ],
          ),
          body: Column(
            children: [
              // Список корзины
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(
                              child: Text('Корзина пуста..'),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                // Отдельынй элемент в корзине
                                final cartItem = userCart[index];
                                // Возврат списка корзины
                                return MyCartTile(cartItem: cartItem);
                              },
                            ),
                          ),
                  ],
                ),
              ),

              // Кнопка оформления заказа
              MyButton(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentPage(),
                        ),
                      ),
                  text: 'Оформить заказ'),

              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
