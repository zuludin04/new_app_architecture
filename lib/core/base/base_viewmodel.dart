import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void showLoading(bool show) {
    _isLoading = show;
    notifyListeners();
  }
}
