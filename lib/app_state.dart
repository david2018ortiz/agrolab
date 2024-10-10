import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _creoGoogle = false;
  bool get creoGoogle => _creoGoogle;
  set creoGoogle(bool value) {
    _creoGoogle = value;
  }
}
