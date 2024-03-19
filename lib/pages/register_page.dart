import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Контроллеры текста
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
              'Создание нового аккаунта',
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

            // Подтверждение пароля, поле ввода
            MyTextField(
              controller: confirmPasswordController,
              hintText: 'Повторите пароль',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // Кнопка Регистрации
            MyButton(
              onTap: () {},
              text: 'Создать аккаунт',
            ),

            const SizedBox(height: 10),

            // Регистрация
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'У вас уже есть аккаунт?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Войти',
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
