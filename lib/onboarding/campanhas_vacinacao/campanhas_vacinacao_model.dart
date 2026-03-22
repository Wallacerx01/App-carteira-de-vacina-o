import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'campanhas_vacinacao_widget.dart' show CampanhasVacinacaoWidget;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class CampanhasVacinacaoModel
    extends FlutterFlowModel<CampanhasVacinacaoWidget> {
  ///  Local state fields for this page.

  String? vacinaidsel;

  ///  State fields for stateful widgets in this page.

  var qrCodeResult = '';
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
