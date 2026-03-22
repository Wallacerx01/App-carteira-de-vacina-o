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

Future<String?> verificarCartao(String cartaoVacina) async {
  final supabase = Supabase.instance.client;

  final usuarioResponse = await supabase
      .from('usuarios')
      .select()
      .eq('cartao_vacina', cartaoVacina)
      .maybeSingle();

  if (usuarioResponse != null) {
    return null; // retorna string
  } else {
    return "0"; // cartão não encontrado
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
