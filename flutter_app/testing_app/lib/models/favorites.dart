import 'package:flutter/material.dart';

/// This line imports the Material library, which provides the foundation for building user interfaces in Flutter apps.

/// The `Favorites` class is responsible for managing a list of favorite items 
/// saved by the user. It extends `ChangeNotifier` which provides functionalities 
/// for notifying other parts of the app when the list of favorites changes.
class Favorites extends ChangeNotifier {

  /// This line declares a private final list named `_favoriteItems` of type `int`. 
  /// This list stores the actual favorite item IDs. The underscore (`_`) indicates 
  /// that this variable is private and should not be accessed directly from outside 
  /// the class.
  final List<int> _favoriteItems = [];

  /// This line defines a getter named `items` that returns a copy of the private 
  /// `_favoriteItems` list. This ensures that the original list is not modified 
  /// directly from outside the class.
  List<int> get items => _favoriteItems.toList(); // Returns a copy of the list

  /// This method adds a new favorite item to the internal list. It takes an `int` 
  /// argument named `itemNo` which represents the ID of the item to be added.
  void add(int itemNo) {
    _favoriteItems.add(itemNo);

    /// This line calls the `notifyListeners` method inherited from `ChangeNotifier`.
    /// This method informs any widgets that are listening to changes in the 
    /// `Favorites` object that the list of favorites has been updated.
    notifyListeners();
  }

  /// This method removes a favorite item from the internal list. It takes an `int` 
  /// argument named `itemNo` which represents the ID of the item to be removed.
  void remove(int itemNo) {
    _favoriteItems.remove(itemNo);
    notifyListeners();
  }
}
