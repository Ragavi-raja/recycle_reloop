import '/components/otp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'logon2_model.dart';
export 'logon2_model.dart';

/// OTP Verification Screen for Reloop
class Logon2Widget extends StatefulWidget {
  const Logon2Widget({super.key});

  @override
  State<Logon2Widget> createState() => _Logon2WidgetState();
}

class _Logon2WidgetState extends State<Logon2Widget> {
  late Logon2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Logon2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return wrapWithModel(
      model: _model.otpModel,
      updateCallback: () => safeSetState(() {}),
      child: OtpWidget(),
    );
  }
}
