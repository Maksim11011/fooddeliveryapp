import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({
    super.key,
    required this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Контроллеры текста
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Логотип
            Icon(
              Icons.lock_open_outlined,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            // Сообщение, слоган приложения
            Text(
              'Food Delivery app',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            // Email, поле ввода
            MyTextField(
              controller: emailController,
              hintText: 'Эл.адрес',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // Пароль, поле ввода
            MyTextField(
              controller: passwordController,
              hintText: 'Пароль',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // Кнопка Входа
            MyButton(
              onTap: () {},
              text: 'Войти',
            ),

            const SizedBox(height: 10),

            // Регистрация
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Еще нет аккаунта?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Регистрация',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
