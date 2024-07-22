import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites Page'),
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "Favourite Contacts",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 200.0,
                    fontFamily:   Robotto,
                    ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
