import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'input_widget.dart' show InputWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InputModel extends FlutterFlowModel<InputWidget> {
  ///  Local state fields for this component.

  String? valorInputFormatado;

  String? valorInput;

  ///  State fields for stateful widgets in this component.

  // State field(s) for inputt widget.
  FocusNode? inputtFocusNode;
  TextEditingController? inputtTextController;
  String? Function(BuildContext, String?)? inputtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputtFocusNode?.dispose();
    inputtTextController?.dispose();
  }
}
