import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setPaymentLinkId(String value) {
    return _sharedPreferences!.setString('payment_link_id', value);
  }

  String getPaymentLinkId() {
    try {
      return _sharedPreferences!.getString('payment_link_id') ?? '';
    } catch (e) {
      return '';
    }
  }
}
