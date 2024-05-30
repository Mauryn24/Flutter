import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/favorites.dart'; // Import the Favorites model

/// The `FavoritesPage` class represents the screen that displays a user's favorite items.
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  /// Defines a static route name for easier navigation to this page.
  static String routeName = 'favorites_page';

  @override
  Widget build(BuildContext context) {
    /// Uses the Provider package to access the `Favorites` object from the provider tree.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'), // Title for the app bar
      ),
      body: Consumer<Favorites>(
        /// This widget rebuilds whenever the `Favorites` object changes.
        builder: (context, value, child) {
          /// Builds a ListView to display each favorite item.
          return ListView.builder(
            itemCount: value.items.length, // Number of items based on favorites list
            padding: const EdgeInsets.symmetric(vertical: 16), // Padding for the list
            itemBuilder: (context, index) {
              /// Builds a `FavoriteItemTile` for each item in the favorites list.
              return FavoriteItemTile(value.items[index]); // Pass the item ID
            },
          );
        },
      ),
    );
  }
}

class FavoriteItemTile extends StatelessWidget {
  const FavoriteItemTile(this.itemNo, {super.key});

  final int itemNo; // Stores the ID of the favorite item

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar( // Circular avatar for visual representation
          backgroundColor: Colors.primaries[itemNo % Colors.primaries.length], // Set color based on item ID
        ),
        title: Text(
          'Item $itemNo', // Display item number
          key: Key('favorites_text_$itemNo'), // Unique key for testing
        ),
        trailing: IconButton( // Button to remove the item from favorites
          key: Key('remove_icon_$itemNo'), // Unique key for testing
          icon: const Icon(Icons.close),
          onPressed: () {
            /// Uses Provider to access the `Favorites` object and removes the item.
            Provider.of<Favorites>(context, listen: false).remove(itemNo);

            /// Shows a snackbar to indicate removal from favorites.
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Removed from favorites.'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}
