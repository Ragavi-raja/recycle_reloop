import '/component/signup_component/signup_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'signupscreen_widget.dart' show SignupscreenWidget;
import 'package:flutter/material.dart';

class SignupscreenModel extends FlutterFlowModel<SignupscreenWidget> {
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
