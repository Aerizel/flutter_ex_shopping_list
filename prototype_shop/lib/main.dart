import 'package:flutter/material.dart';
import './page/home.dart';

void main() {
  runApp(const MyShop());
}

class MyShop extends StatelessWidget {
  const MyShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "shop test",
      home: const Home(),
      theme: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: const Color(0xFF00439C),
            ),
      ),
    );
  }
}

