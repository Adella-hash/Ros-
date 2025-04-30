import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const SilverStoneApp());
}

class SilverStoneApp extends StatelessWidget {
  const SilverStoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Silver Stone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 51, 68, 63),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 168, 168, 168),
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.white,
          textColor: Colors.white,
          tileColor: Color.fromARGB(255, 51, 68, 63),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 51, 68, 63),
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 19,
          ),
          labelSmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
      home: const SilverStore(title: 'Silver Stone Store'),
    );
  }
}

class SilverStore extends StatefulWidget {
  const SilverStore({super.key, required this.title});

  final String title;

  @override
  State<SilverStore> createState() => _SilverStoreState();
}

class _SilverStoreState extends State<SilverStore> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          return ListTile(
            leading: SvgPicture.asset(
              'assets/svg/ametist_logo.svg', // Используй правильный путь к файлу
              // ignore: deprecated_member_use
              color: Colors.white,
              width: 25,
              height: 25,
            ),
            title: Text(
              'List of Items $i',
              style: theme.textTheme.bodyMedium,
            ),
            subtitle: Text(
              'Description of the item',
              style: theme.textTheme.labelSmall,
            ),
          );
        },
      ),
    );
  }
}

class SilverStoreDescription extends StatelessWidget {
  const SilverStoreDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
