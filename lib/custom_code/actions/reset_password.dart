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

Future<String?> resetPassword(
    String? newPassword, String? confirmPassword) async {
  if (newPassword != confirmPassword) {
    return 'As senhas não coincidem.';
  }

  try {
    await SupaFlow.client.auth
        .updateUser(UserAttributes(password: newPassword));

    // Retorna null se a redefinição for bem-sucedida
    return '0';
  } catch (error) {
    print('Erro ao redefinir senha: $error');
    return error.toString();
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
