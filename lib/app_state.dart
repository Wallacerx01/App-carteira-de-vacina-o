import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _qrResult = prefs
              .getStringList('ff_qrResult')
              ?.map((x) {
                try {
                  return VacinaDataStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _qrResult;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<VacinaDataStruct> _qrResult = [];
  List<VacinaDataStruct> get qrResult => _qrResult;
  set qrResult(List<VacinaDataStruct> value) {
    _qrResult = value;
    prefs.setStringList(
        'ff_qrResult', value.map((x) => x.serialize()).toList());
  }

  void addToQrResult(VacinaDataStruct value) {
    qrResult.add(value);
    prefs.setStringList(
        'ff_qrResult', _qrResult.map((x) => x.serialize()).toList());
  }

  void removeFromQrResult(VacinaDataStruct value) {
    qrResult.remove(value);
    prefs.setStringList(
        'ff_qrResult', _qrResult.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromQrResult(int index) {
    qrResult.removeAt(index);
    prefs.setStringList(
        'ff_qrResult', _qrResult.map((x) => x.serialize()).toList());
  }

  void updateQrResultAtIndex(
    int index,
    VacinaDataStruct Function(VacinaDataStruct) updateFn,
  ) {
    qrResult[index] = updateFn(_qrResult[index]);
    prefs.setStringList(
        'ff_qrResult', _qrResult.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInQrResult(int index, VacinaDataStruct value) {
    qrResult.insert(index, value);
    prefs.setStringList(
        'ff_qrResult', _qrResult.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
