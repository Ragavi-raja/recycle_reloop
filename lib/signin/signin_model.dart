import '/components/signup_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'signin_widget.dart' show SigninWidget;
import 'package:flutter/material.dart';

class SigninModel extends FlutterFlowModel<SigninWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Signup_component component.
  late SignupComponentModel signupComponentModel;

  @override
  void initState(BuildContext context) {
    signupComponentModel = createModel(context, () => SignupComponentModel());
  }

  @override
  void dispose() {
    signupComponentModel.dispose();
  }
}
