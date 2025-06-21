import '/flutter_flow/flutter_flow_util.dart';
import 'loggin1_widget.dart' show Loggin1Widget;
import 'package:flutter/material.dart';

class Loggin1Model extends FlutterFlowModel<Loggin1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
