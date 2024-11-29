import 'package:flutter/material.dart';
import 'src/home/presentation/pages/home.page.dart';
import 'src/items/presentation/list_items.page.dart';
import 'src/items/presentation/create_item.page.dart';
import 'src/estimate/presentation/pages/estimate.page.dart';

class ScrumPokerApp extends StatelessWidget {
  const ScrumPokerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
          background: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/list-items': (context) => const ListItems(),
        '/create-item': (context) => const CreateItemPage(),
        '/estimate': (context) => const EstimatePage(),
      },
    );
  }
}