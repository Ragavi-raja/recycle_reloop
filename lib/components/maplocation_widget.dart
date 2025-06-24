import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'maplocation_model.dart';
export 'maplocation_model.dart';

class MaplocationWidget extends StatefulWidget {
  const MaplocationWidget({super.key});

  @override
  State<MaplocationWidget> createState() => _MaplocationWidgetState();
}

class _MaplocationWidgetState extends State<MaplocationWidget> {
  late MaplocationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaplocationModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
        child: Container(
          width: 197.0,
          height: 36.0,
          decoration: BoxDecoration(
            color: Color(0xFFF3FFF3),
            borderRadius: BorderRadius.circular(10.0),
          ),
          alignment: AlignmentDirectional(-1.0, -1.0),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/gps-01.png',
                        width: 20.0,
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GradientText(
                    'User Current Location',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: ' Neue Haas Grotesk Text Pro',
                      color: Color(0x00000000),
                      fontSize: 14.0,
                    ),
                    colors: [Color(0xFF009444), Color(0xFF00A300)],
                    gradientDirection: GradientDirection.ltr,
                    gradientType: GradientType.linear,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
