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

import 'package:elegant_notification/resources/arrays.dart';
import 'package:elegant_notification/elegant_notification.dart';

Future newCustomAction(BuildContext context, String? titulo, String? mensagem,
    Color? cor, double? largura, double? altura) async {
  // Add your function code here}

  if (mensagem == null || mensagem.isEmpty) {
    mensagem = 'Sem conteúdo';
  }

  if (titulo == null || titulo.isEmpty) {
    titulo = 'Notificação';
  }

  ElegantNotification(
          title: Text(titulo, style: TextStyle(fontWeight: FontWeight.bold)),
          description: Text(mensagem),
          icon: Icon(
            Icons.check_circle,
            color: cor ?? Colors.green,
          ),
          progressIndicatorColor: cor ?? Colors.green,
          animation: AnimationType.fromRight,
          width: largura ?? 600,
          height: altura ?? 70)
      .show(context);
}
