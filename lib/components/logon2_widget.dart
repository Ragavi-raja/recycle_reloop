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
    return Container(
      width: 414.0,
      height: 896.0,
      decoration: BoxDecoration(
        color: Color(0xFF000363),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/05ec/3c5f/e0e6d2b301778c6be4f4bd7e296f1a6e?Expires=1751241600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=I0FvqVSf90bxtPDPrdn46aUEYkZdpgrSThUiBRm89AhtfhiONvq1uTqKFQMF89YK-GW1dv9jDg9UtXWBzXzA9Y41qDo5cvkdxwu2yweFcs6qlPBb5GlaZbHefUk6mev2uZKiPGEbiqvdV7XPekzBW2NLRkzE4-uB75OVf-9VzsCfdL1rZFt4PmVEiPtkHVaJLCM3eMW5TQODJwEvu1ntZ528YMj320aTOQJYIv6sB1xeZa2YHnvOASZ2adrCLZkcPE41A76jpNdmTvSXi~loF3HMGOs5xfKaPIaJMyvoS-aee8iOug3xYXyNCq-OgRFEGz3RNHcmGLr-uvfyFx-Mag__',
                  width: 300.0,
                  height: 300.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Container(
                  width: 366.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: wrapWithModel(
                    model: _model.otpModel,
                    updateCallback: () => safeSetState(() {}),
                    child: OtpWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
