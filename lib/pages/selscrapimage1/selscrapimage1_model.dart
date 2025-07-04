import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'selscrapimage1_widget.dart' show Selscrapimage1Widget;
import 'package:flutter/material.dart';

class Selscrapimage1Model extends FlutterFlowModel<Selscrapimage1Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataV85 = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataV85 = [];

  bool isDataUploading_reloopScrapImage = false;
  FFUploadedFile uploadedLocalFile_reloopScrapImage =
      FFUploadedFile(bytes: Uint8List.fromList([]));

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
