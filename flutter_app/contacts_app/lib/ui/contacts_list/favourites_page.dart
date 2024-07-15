import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites Page'),
      ),
       body: const Center(
       child: Text(
         "Favourite Contacts",
         style: TextStyle(
           color: Colors.black,
           fontSize: 700.0,
           fontFamily: SansSarif,
         ),
       ),
     ),
    );
  }
}