import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'agregar_gastos_widget.dart' show AgregarGastosWidget;
import 'package:flutter/material.dart';

class AgregarGastosModel extends FlutterFlowModel<AgregarGastosWidget> {
  ///  Local state fields for this page.

  DocumentReference? proyectoSelect;

  String? proyectoNombre;

  String? subidoEvidencia;

  String? subidoFactura;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ExpensesRecord? succesGastos;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
