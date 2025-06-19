import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'gallery_screen_model.dart';
export 'gallery_screen_model.dart';

class GalleryScreenWidget extends StatefulWidget {
  const GalleryScreenWidget({super.key});

  static String routeName = 'gallery_screen';
  static String routePath = '/galleryScreen';

  @override
  State<GalleryScreenWidget> createState() => _GalleryScreenWidgetState();
}

class _GalleryScreenWidgetState extends State<GalleryScreenWidget> {
  late GalleryScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GalleryScreenModel());
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
