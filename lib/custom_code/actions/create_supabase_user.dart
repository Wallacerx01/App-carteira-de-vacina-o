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

import 'package:intl/intl.dart';

Future<String?> createSupabaseUser(
    String email,
    String senha,
    String confirmSenha,
    String cartaoVacina,
    DateTime dataNascimento,
    String sexo,
    String nome) async {
  final supabase = Supabase.instance.client;

// Verifica se as senhas coincidem
  if (senha != confirmSenha) {
    return 'As senhas não coincidem.';
  }

  final usuarioResponse = await supabase
      .from('usuarios')
      .select()
      .eq('cartao_vacina', cartaoVacina)
      .maybeSingle();

  if (usuarioResponse != null) {
    // Extrai o valor do banco
    final int cartaoDb = usuarioResponse['cartao_vacina'] as int;

    // Compara com o valor informado
    if (cartaoVacina == cartaoDb) {
      return 'Error, já possui um cartão cadastrado!';
    }
  }

  try {
    final response = await supabase.auth.signUp(
      email: email.trim().toLowerCase(),
      password: senha,
    );

    if (response.user == null) {
      return 'Erro ao criar conta: ${response.session?.accessToken ?? 'sem token'}';
    }

    // Salva informações extras na tabela usuarios
    String dataFormatada = DateFormat('yyyy-MM-dd').format(dataNascimento);

    await supabase.from('usuarios').insert({
      'user_id': response.user!.id,
      'nome': nome,
      'email': email,
      'sexo': sexo,
      'cartao_vacina': cartaoVacina,
      'data_nascimento': dataFormatada,
    });

// Conta criada com sucesso
    return '0';
  } catch (error) {
    print('Erro ao criar conta: $error');
    return error.toString();
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
