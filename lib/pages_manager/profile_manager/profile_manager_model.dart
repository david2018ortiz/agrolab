import '/flutter_flow/flutter_flow_util.dart';
import 'profile_manager_widget.dart' show ProfileManagerWidget;
import 'package:flutter/material.dart';

class ProfileManagerModel extends FlutterFlowModel<ProfileManagerWidget> {
  ///  Local state fields for this page.

  bool editar = true;

  String? urlImage;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for identidad widget.
  FocusNode? identidadFocusNode;
  TextEditingController? identidadTextController;
  String? Function(BuildContext, String?)? identidadTextControllerValidator;
  // State field(s) for Telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for ciudad widget.
  FocusNode? ciudadFocusNode;
  TextEditingController? ciudadTextController;
  String? Function(BuildContext, String?)? ciudadTextControllerValidator;
  // State field(s) for descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    identidadFocusNode?.dispose();
    identidadTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    ciudadFocusNode?.dispose();
    ciudadTextController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();
  }
}
