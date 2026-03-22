// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> verificarTamanho(String valor) async {
  // Remove tudo que não for número
  String somenteNumeros = valor.replaceAll(RegExp(r'\D'), '');

  // Se tiver exatamente 12 números, retorna 0
  if (somenteNumeros.length == 12) {
    return 0;
  } else {
    // Caso contrário, retorna 1
    return 1;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
