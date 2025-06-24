import '/components/maplocation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'newlocation_widget.dart' show NewlocationWidget;
import 'package:flutter/material.dart';

class NewlocationModel extends FlutterFlowModel<NewlocationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for maplocation component.
  late MaplocationModel maplocationModel;

  @override
  void initState(BuildContext context) {
    maplocationModel = createModel(context, () => MaplocationModel());
  }

  @override
  void dispose() {
    maplocationModel.dispose();
  }
}
