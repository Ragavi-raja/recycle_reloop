import '/flutter_flow/flutter_flow_util.dart';
import 'login_component1_widget.dart' show LoginComponent1Widget;
import 'package:flutter/material.dart';

class LoginComponent1Model extends FlutterFlowModel<LoginComponent1Widget> {
  ///  State fields for stateful widgets in this component.

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
