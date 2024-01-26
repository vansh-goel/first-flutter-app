import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Center(
        child: Text('This is another page'),
      ),
      drawer: Drawer(
        child:  ListView (
          children:[
          ElevatedButton(
            child: const Row(
              children: [
                Icon(Icons.arrow_back_ios_rounded),
                Text("First Page"),
              ],
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/firstpage");
            }, 
          )
        ],
      ),
    ),
    );
  }
}
