import '/flutter_flow/flutter_flow_util.dart';
import 'quote_widget.dart' show QuoteWidget;
import 'package:flutter/material.dart';

class QuoteModel extends FlutterFlowModel<QuoteWidget> {
  ///  State fields for stateful widgets in this page.

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
