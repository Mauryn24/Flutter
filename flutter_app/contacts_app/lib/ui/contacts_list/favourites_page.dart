import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites Page'),
      ),
      body: Center(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Center(
              child: Text(
                "Favourite Contacts",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 700.0,                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
