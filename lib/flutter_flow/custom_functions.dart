import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? gerarLink(String userId) {
  return "https://cartaovacinadgt.netlify.app/?id=$userId";
}

String? aplicarMascara(
  String? valor,
  String mascara,
) {
  if (valor == null) return null;

  String somenteNumeros = valor.replaceAll(RegExp(r'\D'), '');

  var resultado = StringBuffer();
  int indexValor = 0;

  for (int i = 0; i < mascara.length; i++) {
    if (mascara[i] == '#') {
      if (indexValor < somenteNumeros.length) {
        resultado.write(somenteNumeros[indexValor]);
        indexValor++;
      } else {
        break;
      }
    } else {
      if (indexValor < somenteNumeros.length) {
        resultado.write(mascara[i]);
      }
    }
  }

  return resultado.toString();
}

String? apenasNumeros(String? valor) {
  if (valor == null) return null;

  String somenteNumeros = valor.replaceAll(RegExp(r'\D'), '');

  return somenteNumeros;
}
