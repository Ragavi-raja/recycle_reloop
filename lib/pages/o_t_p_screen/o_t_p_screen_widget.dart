import '/component/otp_component/otp_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'o_t_p_screen_model.dart';
export 'o_t_p_screen_model.dart';

/// Login Screen for Reloop App
class OTPScreenWidget extends StatefulWidget {
  final String? mobile;
  const OTPScreenWidget({super.key, this.mobile});

  static String routeName = 'OTPScreen';
  static String routePath = '/oTPScreen';

  @override
  State<OTPScreenWidget> createState() => _OTPScreenWidgetState();
}

class _OTPScreenWidgetState extends State<OTPScreenWidget> {
  late OTPScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OTPScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).c9,
          body: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Stack(
                  children: [],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.01),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 275.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(48.0),
                        topRight: Radius.circular(48.0),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 45.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.otpComponentModel,
                                updateCallback: () => safeSetState(() {}),
                                child:
                                    OtpComponentWidget(mobile: widget.mobile),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.01, -1.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/9eaequ.png',
                    width: 400.0,
                    height: 344.3,
                    fit: BoxFit.cover,
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
