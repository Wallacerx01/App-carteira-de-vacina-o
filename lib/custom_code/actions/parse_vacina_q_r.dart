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

import 'dart:convert';

Future<dynamic> parseVacinaQR(String qrData) async {
  try {
    final decoded = jsonDecode(qrData);
    return {
      'nomeVacina': decoded['vacina'] ?? '',
      'dataAplicacao': decoded['dataAplicacao'] ?? '',
      'dose': decoded['dose'] ?? '',
      'posto': decoded['posto'] ?? '',
      'proximaDose': decoded['dataRetorno'] ?? '',
    };
  } catch (e) {
    print("Erro ao decodificar QR: $e");
    return {};
  }
}
