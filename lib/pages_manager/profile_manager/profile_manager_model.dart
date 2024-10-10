import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'profile_manager_widget.dart' show ProfileManagerWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
