import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'selscrapimage1_widget.dart' show Selscrapimage1Widget;
import 'package:flutter/material.dart';

class Selscrapimage1Model extends FlutterFlowModel<Selscrapimage1Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_reloopScrapImage = false;
  FFUploadedFile uploadedLocalFile_reloopScrapImage =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Button component.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    buttonModel.dispose();
  }
}
