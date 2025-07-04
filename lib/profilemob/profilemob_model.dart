import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profilemob_widget.dart' show ProfilemobWidget;
import 'package:flutter/material.dart';

class ProfilemobModel extends FlutterFlowModel<ProfilemobWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for login_mobile_number widget.
  FocusNode? loginMobileNumberFocusNode;
  TextEditingController? loginMobileNumberTextController;
  String? Function(BuildContext, String?)?
      loginMobileNumberTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    loginMobileNumberFocusNode?.dispose();
    loginMobileNumberTextController?.dispose();
  }
}
