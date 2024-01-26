
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children:  [
        
          // logo
          DrawerHeader(child: Center(
            child: Icon(
              Icons.music_note_outlined, 
              size: 60, 
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ),

          // home title
          Padding(
            padding: const EdgeInsets.only(right:25, top:25),
            child: ListTile(
              title: const Text("H O M E"),
              leading: const Icon(Icons.home_rounded),
              iconColor: Theme.of(context).colorScheme.inversePrimary,
              textColor: Theme.of(context).colorScheme.inversePrimary,
              onTap: () => Navigator.of(context),
            )
          ),

          Padding(
            padding: const EdgeInsets.only(right:25, top:0),
            child: ListTile(
              title: const Text("S E T T I N G S"),
              leading: const Icon(Icons.settings),
              iconColor: Theme.of(context).colorScheme.inversePrimary,
              textColor: Theme.of(context).colorScheme.inversePrimary,
              onTap: () =>{
                Navigator.of(context),
                Navigator.pushNamed(context, "/settings")
              }   
            )
          )

      ],
    ),
  );
}
}
