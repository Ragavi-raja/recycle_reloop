import '/components/otp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'logon2_widget.dart' show Logon2Widget;
import 'package:flutter/material.dart';

class Logon2Model extends FlutterFlowModel<Logon2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for otp component.
  late OtpModel otpModel;

  @override
  void initState(BuildContext context) {
    otpModel = createModel(context, () => OtpModel());
  }

  @override
  void dispose() {
    otpModel.dispose();
  }
}
