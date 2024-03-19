import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';

import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // Лого
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_outlined,
              size: 75,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // Меню
          MyDrawerTile(
            text: 'М Е Н Ю',
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),

          // Настройки
          MyDrawerTile(
            text: 'Н А С Т Р О Й К И',
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),

          const Spacer(),

          // Выход
          MyDrawerTile(
            text: 'В Ы Х О Д',
            icon: Icons.logout,
            onTap: () {},
          ),

          const SizedBox(height: 25)
        ],
      ),
    );
  }
}
