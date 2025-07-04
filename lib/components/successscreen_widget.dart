import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'successscreen_model.dart';
export 'successscreen_model.dart';

/// Registration Confirmation Message
class SuccessscreenWidget extends StatefulWidget {
  const SuccessscreenWidget({super.key});

  @override
  State<SuccessscreenWidget> createState() => _SuccessscreenWidgetState();
}

class _SuccessscreenWidgetState extends State<SuccessscreenWidget> {
  late SuccessscreenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessscreenModel());
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
        color: Color(0xFF1C1C1C),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Container(
                width: 366.0,
                height: 234.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://s3-alpha-sig.figma.com/img/8cfe/cfe9/928464f9483d06e634c297af9ea91150?Expires=1752451200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=hYSDujvJyORBJjnmxlCEXQd4pj3PIShmr63blrHVgd9-0Kkujd-Q0~lgUMpxM7fwGei5ZzPVKh3v~lrMxr2F9hkA6QOaJKqTVlOA6C1J8PywGaO5KQg68xLijv2SHLKPn9Y0kLFHnnst8KBkShiBVU75K5YVYdWIZ0pSfrJ9KeTq8UsOfMNHe2m5YGltra-uvs0w8UMosWVCJ8iLI0oPJQHPu0uuT8psXZFh-FoO7Q71mci98H2XaufjuEp-R-GxM1L7GBmnrGhnQ1yWMN1dbaIyuBg~dTAXNkHTt6nw09tGKCYClZX3VeliDszzjZSGWBMVxEYNxY33jvRR6xQNFA__',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Your Registration has been Submitted Successfully!',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            color: Color(0xFFFAF9F9),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            lineHeight: 1.5,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ),
                    Text(
                      'Our team will reach you Shortly!',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: Color(0xFFFAF9F9),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            lineHeight: 1.5,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
