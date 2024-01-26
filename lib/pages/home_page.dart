import 'package:flutter/material.dart';
import 'package:myapp/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar:  AppBar(
        centerTitle: true,
        title: const Text(
          "P L A Y L I S T"
        ),
      ),
      drawer: MyDrawer()
    );
  }
}
