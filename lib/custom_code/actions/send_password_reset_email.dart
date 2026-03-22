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

Future<String> sendPasswordResetEmail(String email) async {
  final supabase = Supabase.instance.client;

  try {
    await supabase.auth.resetPasswordForEmail(email.trim().toLowerCase());

    // Retorna null se o envio for bem-sucedido
    return '0';
  } catch (error) {
    print('Erro ao enviar e-mail de redefinição: $error');
    return error.toString();
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
