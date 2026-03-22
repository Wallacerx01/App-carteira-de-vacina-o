import '/components/input_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'criar_conta_widget.dart' show CriarContaWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CriarContaModel extends FlutterFlowModel<CriarContaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CreateNome widget.
  FocusNode? createNomeFocusNode;
  TextEditingController? createNomeTextController;
  String? Function(BuildContext, String?)? createNomeTextControllerValidator;
  String? _createNomeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ujr6kzlo' /* Digite um nome valido. */,
      );
    }

    if (val.length < 5) {
      return FFLocalizations.of(context).getText(
        'ir20jrgu' /* Digite seu nome completo */,
      );
    }

    return null;
  }

  DateTime? datePicked;
  // Model for input component.
  late InputModel inputModel;
  // State field(s) for CreateSexo widget.
  String? createSexoValue;
  FormFieldController<String>? createSexoValueController;
  // State field(s) for CreateEmail widget.
  FocusNode? createEmailFocusNode;
  TextEditingController? createEmailTextController;
  String? Function(BuildContext, String?)? createEmailTextControllerValidator;
  String? _createEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'mymfiz43' /* Digite um email valido. */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'knc8nifi' /* Email digitado não é valido */,
      );
    }
    return null;
  }

  // State field(s) for CreateSenha widget.
  FocusNode? createSenhaFocusNode;
  TextEditingController? createSenhaTextController;
  late bool createSenhaVisibility;
  String? Function(BuildContext, String?)? createSenhaTextControllerValidator;
  String? _createSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'd2c04s1x' /* Digite uma senha valida. */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        '501cavq9' /* Insira no minimo 6 caracteres. */,
      );
    }

    return null;
  }

  // State field(s) for Createsenhanovamente widget.
  FocusNode? createsenhanovamenteFocusNode;
  TextEditingController? createsenhanovamenteTextController;
  late bool createsenhanovamenteVisibility;
  String? Function(BuildContext, String?)?
      createsenhanovamenteTextControllerValidator;
  String? _createsenhanovamenteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3dplc5u7' /* Senhas não correspondem. */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        '0iy91l57' /* Insira no minimo 6 caracteres. */,
      );
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Slvbotton widget.
  bool? error;
  // Stores action output result for [Custom Action - verificarCartao] action in Slvbotton widget.
  String? cartaoStatus;
  // Stores action output result for [Custom Action - verificarEmail] action in Slvbotton widget.
  String? emailStatus;
  // Stores action output result for [Custom Action - createSupabaseUser] action in Slvbotton widget.
  String? creaateStatus;

  @override
  void initState(BuildContext context) {
    createNomeTextControllerValidator = _createNomeTextControllerValidator;
    inputModel = createModel(context, () => InputModel());
    createEmailTextControllerValidator = _createEmailTextControllerValidator;
    createSenhaVisibility = false;
    createSenhaTextControllerValidator = _createSenhaTextControllerValidator;
    createsenhanovamenteVisibility = false;
    createsenhanovamenteTextControllerValidator =
        _createsenhanovamenteTextControllerValidator;
    inputModel.inputtTextControllerValidator = _formTextFieldValidator;
  }

  @override
  void dispose() {
    createNomeFocusNode?.dispose();
    createNomeTextController?.dispose();

    inputModel.dispose();
    createEmailFocusNode?.dispose();
    createEmailTextController?.dispose();

    createSenhaFocusNode?.dispose();
    createSenhaTextController?.dispose();

    createsenhanovamenteFocusNode?.dispose();
    createsenhanovamenteTextController?.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5at65y2d' /* Cartão de vacina obrigatório */,
      );
    }

    if (val.length < 12) {
      return FFLocalizations.of(context).getText(
        'k12xuhpw' /* Minimo 12 caracteres  */,
      );
    }

    return null;
  }
}
