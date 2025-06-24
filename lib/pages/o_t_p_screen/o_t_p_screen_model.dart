import '/component/otp_component/otp_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'o_t_p_screen_widget.dart' show OTPScreenWidget;
import 'package:flutter/material.dart';

class OTPScreenModel extends FlutterFlowModel<OTPScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for otp_Component component.
  late OtpComponentModel otpComponentModel;

  @override
  void initState(BuildContext context) {
    otpComponentModel = createModel(context, () => OtpComponentModel());
  }

  @override
  void dispose() {
    otpComponentModel.dispose();
  }
}
