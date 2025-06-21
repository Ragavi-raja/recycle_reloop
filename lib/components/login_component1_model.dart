import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_component1_widget.dart' show LoginComponent1Widget;
import 'package:flutter/material.dart';

class LoginComponent1Model extends FlutterFlowModel<LoginComponent1Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for login_mobile_number widget.
  FocusNode? loginMobileNumberFocusNode;
  TextEditingController? loginMobileNumberTextController;
  String? Function(BuildContext, String?)?
      loginMobileNumberTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (loginInput)] action in Button widget.
  ApiCallResponse? logininputResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    loginMobileNumberFocusNode?.dispose();
    loginMobileNumberTextController?.dispose();
  }
}
