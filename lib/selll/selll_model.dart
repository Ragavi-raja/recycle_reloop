import '/components/selectscrap_bottomsheet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'selll_widget.dart' show SelllWidget;
import 'package:flutter/material.dart';

class SelllModel extends FlutterFlowModel<SelllWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for selectscrap_bottomsheet component.
  late SelectscrapBottomsheetModel selectscrapBottomsheetModel;

  @override
  void initState(BuildContext context) {
    selectscrapBottomsheetModel =
        createModel(context, () => SelectscrapBottomsheetModel());
  }

  @override
  void dispose() {
    selectscrapBottomsheetModel.dispose();
  }
}
