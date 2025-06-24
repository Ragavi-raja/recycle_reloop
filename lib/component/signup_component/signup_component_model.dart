import '/flutter_flow/flutter_flow_util.dart';
import 'signup_component_widget.dart' show SignupComponentWidget;
import 'package:flutter/material.dart';

class SignupComponentModel extends FlutterFlowModel<SignupComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for number widget.
  FocusNode? numberFocusNode;
  TextEditingController? numberTextController;
  String? Function(BuildContext, String?)? numberTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    numberFocusNode?.dispose();
    numberTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
