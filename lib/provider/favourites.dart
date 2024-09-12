import 'package:flutter/material.dart';

class Favouriteprovider extends ChangeNotifier {
  final Set<String> _favouriteTasks =
      {}; // set handles uniqueness; makes it easier to add or remove tasks without duplications

  Set<String> get favouriteTasks =>
      _favouriteTasks; // set string is getter method that allows to access favourite task

  bool isFavourite(String taskName) {
    return _favouriteTasks.contains(taskName);
  }

  void toggleFavourite(String taskName) {
    if (_favouriteTasks.contains(taskName)) {
      _favouriteTasks.remove(taskName);
    } else {
      _favouriteTasks.add(taskName);
    }
    notifyListeners();
  }
}
