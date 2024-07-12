import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
      ),
       body: const Center(
       child: Text(
         "Favourite Contacts",
         style: TextStyle(
           color: Colors.black,
           fontSize: 50.0,
           fontFamily:
         ),
       ),
     ),
    );
  }
}