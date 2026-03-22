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
import 'package:supabase_flutter/supabase_flutter.dart';

Future<String> addCampanhaFromQR(String qrData) async {
  try {
    final client = Supabase.instance.client;
    final user = client.auth.currentUser;

    if (user == null) return "Usuário não autenticado";

    // 🧩 Extrai o ID da campanha do link do QR
    final uri = Uri.tryParse(qrData);
    if (uri == null || !uri.pathSegments.contains('campanhas')) {
      return "QR Code inválido";
    }

    final campanhaId = uri.pathSegments.last;
    if (campanhaId.isEmpty) return "ID da campanha não encontrado";

    // 🔍 Verifica se a campanha existe
    final campanha = await client
        .from('campanhas')
        .select('id')
        .eq('id', campanhaId)
        .maybeSingle();

    if (campanha == null) return "Campanha não encontrada no banco";

    // ⚙️ Verifica se o usuário já está vinculado
    final vinculoExistente = await client
        .from('usuario_campanhas')
        .select('id')
        .eq('usuario_id', user.id)
        .eq('campanha_id', campanhaId)
        .maybeSingle();

    if (vinculoExistente != null) {
      return "Usuário já vinculado a esta campanha";
    }

    // ✅ Cria o vínculo na tabela usuarios_campanhas
    final insertResp = await client
        .from('usuario_campanhas')
        .insert({
          'usuario_id': user.id,
          'campanha_id': campanhaId,
          'data_vinculo': DateTime.now().toIso8601String(),
          'status': 'ativo',
        })
        .select()
        .maybeSingle();

    if (insertResp == null) return "Erro ao vincular campanha";

    return "✅ Campanha vinculada com sucesso!";
  } catch (e, stack) {
    print("Erro ao processar QR Code: $e\n$stack");
    return "Erro ao processar QR Code: $e";
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
