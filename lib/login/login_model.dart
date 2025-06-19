import '/components/login_component1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for login_component_1 component.
  late LoginComponent1Model loginComponent1Model;

  @override
  void initState(BuildContext context) {
    loginComponent1Model = createModel(context, () => LoginComponent1Model());
  }

  @override
  void dispose() {
    loginComponent1Model.dispose();
  }
}
