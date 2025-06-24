import '/flutter_flow/flutter_flow_util.dart';
import 'sellscrap_product_widget.dart' show SellscrapProductWidget;
import 'package:flutter/material.dart';

class SellscrapProductModel extends FlutterFlowModel<SellscrapProductWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
