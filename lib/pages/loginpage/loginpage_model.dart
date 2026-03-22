import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/criar_conta/criar_conta_widget.dart';
import '/pages/esqueceu_sua_conta/esqueceu_sua_conta_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  Local state fields for this page.

  bool errorLogin = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for loginEmail widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;
  String? _loginEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'k5fxlwbl' /* Digite um email valido */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '758maofp' /* Email digitado não é valido */,
      );
    }
    return null;
  }

  // State field(s) for loginSenha widget.
  FocusNode? loginSenhaFocusNode;
  TextEditingController? loginSenhaTextController;
  late bool loginSenhaVisibility;
  String? Function(BuildContext, String?)? loginSenhaTextControllerValidator;
  String? _loginSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'liccf7s7' /* Digite uma senha valida  */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - loginUser] action in Button widget.
  String? loginStatus;

  @override
  void initState(BuildContext context) {
    loginEmailTextControllerValidator = _loginEmailTextControllerValidator;
    loginSenhaVisibility = false;
    loginSenhaTextControllerValidator = _loginSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();

    loginSenhaFocusNode?.dispose();
    loginSenhaTextController?.dispose();
  }
}
