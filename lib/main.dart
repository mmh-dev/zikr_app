import 'package:flutter/material.dart';

import 'zikr_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zikr App'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              // TODO: Implement menu item selected callback
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 1,
                child: Text('Menu Item 1'),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text('Menu Item 2'),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text('Menu Item 3'),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  icon: Icons.home,
                  title: 'Dua',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ZikrPage()),
                    );
                  },
                ),
                MyButton(
                  icon: Icons.search,
                  title: 'Search',
                  onPressed: () {
                    // TODO: implement button action
                  },
                ),
                MyButton(
                  icon: Icons.add,
                  title: 'Add',
                  onPressed: () {
                    // TODO: implement button action
                  },
                ),
                MyButton(
                  icon: Icons.favorite,
                  title: 'Favorite',
                  onPressed: () {
                    // TODO: implement button action
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  icon: Icons.notifications,
                  title: 'Notifications',
                  onPressed: () {
                    // TODO: implement button action
                  },
                ),
                MyButton(
                  icon: Icons.settings,
                  title: 'Settings',
                  onPressed: () {
                    // TODO: implement button action
                  },
                ),
                MyButton(
                  icon: Icons.help,
                  title: 'Help',
                  onPressed: () {
                    // TODO: implement button action
                  },
                ),
                MyButton(
                  icon: Icons.exit_to_app,
                  title: 'Logout',
                  onPressed: () {
                    // TODO: implement button action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        minimumSize: const Size(80, 80),
        primary: Colors.white.withOpacity(0.8),
        onPrimary: Colors.black,
      ),
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
