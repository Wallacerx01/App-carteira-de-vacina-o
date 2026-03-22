import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'nova_senha_widget.dart' show NovaSenhaWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NovaSenhaModel extends FlutterFlowModel<NovaSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NovaSenh widget.
  FocusNode? novaSenhFocusNode;
  TextEditingController? novaSenhTextController;
  late bool novaSenhVisibility;
  String? Function(BuildContext, String?)? novaSenhTextControllerValidator;
  String? _novaSenhTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '28i3u9i3' /* Insira uma senha valída */,
      );
    }

    return null;
  }

  // State field(s) for ConfSenha widget.
  FocusNode? confSenhaFocusNode;
  TextEditingController? confSenhaTextController;
  late bool confSenhaVisibility;
  String? Function(BuildContext, String?)? confSenhaTextControllerValidator;
  String? _confSenhaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fyynrs71' /* Confirmar senha valída */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - resetPassword] action in Row widget.
  String? resetStatus;

  @override
  void initState(BuildContext context) {
    novaSenhVisibility = false;
    novaSenhTextControllerValidator = _novaSenhTextControllerValidator;
    confSenhaVisibility = false;
    confSenhaTextControllerValidator = _confSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    novaSenhFocusNode?.dispose();
    novaSenhTextController?.dispose();

    confSenhaFocusNode?.dispose();
    confSenhaTextController?.dispose();
  }
}
