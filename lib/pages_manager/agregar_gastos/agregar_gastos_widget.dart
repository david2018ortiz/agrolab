import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'agregar_gastos_model.dart';
export 'agregar_gastos_model.dart';

class AgregarGastosWidget extends StatefulWidget {
  const AgregarGastosWidget({
    super.key,
    this.proyectId,
    this.proyectName,
  });

  final DocumentReference? proyectId;
  final String? proyectName;

  @override
  State<AgregarGastosWidget> createState() => _AgregarGastosWidgetState();
}

class _AgregarGastosWidgetState extends State<AgregarGastosWidget> {
  late AgregarGastosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgregarGastosModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF15161E),
              size: 30.0,
            ),
            onPressed: () async {
              context.goNamed(
                'proyectsManager',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.rightToLeft,
                  ),
                },
              );
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
            child: Text(
              'Gastos',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Outfit',
                    color: Color(0xFF15161E),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 500.0,
              ),
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bienvenido',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFF606A85),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                        child: Text(
                          'Proyecto seleccionado: ${widget!.proyectName}',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          'Agregar gastos.',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF15161E),
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextFormField(
                              controller: _model.textController1,
                              focusNode: _model.textFieldFocusNode1,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Nombre del producto',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF606A85),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF606A85),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE5E7EB),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF6F61EF),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 12.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF15161E),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              cursorColor: Color(0xFF6F61EF),
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Valor declarado \$',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF606A85),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF606A85),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE5E7EB),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF6F61EF),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 12.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF15161E),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              keyboardType: TextInputType.number,
                              cursorColor: Color(0xFF6F61EF),
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final selectedFiles = await selectFiles(
                              storageFolderPath: 'gastos',
                              multiFile: false,
                            );
                            if (selectedFiles != null) {
                              safeSetState(
                                  () => _model.isDataUploading1 = true);
                              var selectedUploadedFiles = <FFUploadedFile>[];

                              var downloadUrls = <String>[];
                              try {
                                showUploadMessage(
                                  context,
                                  'Uploading file...',
                                  showLoading: true,
                                );
                                selectedUploadedFiles = selectedFiles
                                    .map((m) => FFUploadedFile(
                                          name: m.storagePath.split('/').last,
                                          bytes: m.bytes,
                                        ))
                                    .toList();

                                downloadUrls = await uploadSupabaseStorageFiles(
                                  bucketName: 'agrolagBucket',
                                  selectedFiles: selectedFiles,
                                );
                              } finally {
                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                _model.isDataUploading1 = false;
                              }
                              if (selectedUploadedFiles.length ==
                                      selectedFiles.length &&
                                  downloadUrls.length == selectedFiles.length) {
                                safeSetState(() {
                                  _model.uploadedLocalFile1 =
                                      selectedUploadedFiles.first;
                                  _model.uploadedFileUrl1 = downloadUrls.first;
                                });
                                showUploadMessage(
                                  context,
                                  'Success!',
                                );
                              } else {
                                safeSetState(() {});
                                showUploadMessage(
                                  context,
                                  'Failed to upload file',
                                );
                                return;
                              }
                            }

                            if (_model.isDataUploading1) {
                              _model.subidoEvidencia = 'Se cargo exitosamente';
                              safeSetState(() {});
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 500.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: Color(0xFFE5E7EB),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.add_a_photo_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 32.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Subir evidencia',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            _model.subidoEvidencia,
                            'cargar evidencia...',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final selectedFiles = await selectFiles(
                              storageFolderPath: 'facturas',
                              multiFile: false,
                            );
                            if (selectedFiles != null) {
                              safeSetState(
                                  () => _model.isDataUploading2 = true);
                              var selectedUploadedFiles = <FFUploadedFile>[];

                              var downloadUrls = <String>[];
                              try {
                                showUploadMessage(
                                  context,
                                  'Uploading file...',
                                  showLoading: true,
                                );
                                selectedUploadedFiles = selectedFiles
                                    .map((m) => FFUploadedFile(
                                          name: m.storagePath.split('/').last,
                                          bytes: m.bytes,
                                        ))
                                    .toList();

                                downloadUrls = await uploadSupabaseStorageFiles(
                                  bucketName: 'agrolagBucket',
                                  selectedFiles: selectedFiles,
                                );
                              } finally {
                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                _model.isDataUploading2 = false;
                              }
                              if (selectedUploadedFiles.length ==
                                      selectedFiles.length &&
                                  downloadUrls.length == selectedFiles.length) {
                                safeSetState(() {
                                  _model.uploadedLocalFile2 =
                                      selectedUploadedFiles.first;
                                  _model.uploadedFileUrl2 = downloadUrls.first;
                                });
                                showUploadMessage(
                                  context,
                                  'Success!',
                                );
                              } else {
                                safeSetState(() {});
                                showUploadMessage(
                                  context,
                                  'Failed to upload file',
                                );
                                return;
                              }
                            }

                            if (_model.isDataUploading2) {
                              _model.subidoFactura =
                                  'Se cargo tu factura exitosamente.';
                              safeSetState(() {});
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 500.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: Color(0xFFE5E7EB),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.add_a_photo_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 32.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Subir factura',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            _model.subidoFactura,
                            'cargar factura...',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 12.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var expensesRecordReference =
                                ExpensesRecord.collection.doc();
                            await expensesRecordReference
                                .set(createExpensesRecordData(
                              itemName: _model.textController1.text,
                              itemImg: _model.uploadedFileUrl1,
                              itemPrice:
                                  double.tryParse(_model.textController2.text),
                              createTime: getCurrentTimestamp,
                              managerId: currentUserReference,
                              proyectId: widget!.proyectId,
                              expensesInvoice: _model.uploadedFileUrl2,
                              proyectName: widget!.proyectName,
                              itemImgPath: _model.uploadedFileUrl1,
                              expensesInvoicePath: _model.uploadedFileUrl2,
                              managerName: currentUserDisplayName,
                            ));
                            _model.succesGastos =
                                ExpensesRecord.getDocumentFromData(
                                    createExpensesRecordData(
                                      itemName: _model.textController1.text,
                                      itemImg: _model.uploadedFileUrl1,
                                      itemPrice: double.tryParse(
                                          _model.textController2.text),
                                      createTime: getCurrentTimestamp,
                                      managerId: currentUserReference,
                                      proyectId: widget!.proyectId,
                                      expensesInvoice: _model.uploadedFileUrl2,
                                      proyectName: widget!.proyectName,
                                      itemImgPath: _model.uploadedFileUrl1,
                                      expensesInvoicePath:
                                          _model.uploadedFileUrl2,
                                      managerName: currentUserDisplayName,
                                    ),
                                    expensesRecordReference);
                            await Future.delayed(
                                const Duration(milliseconds: 1000));
                            if (_model.succesGastos != null) {
                              context.goNamed(
                                'proyectsManager',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                  ),
                                },
                              );
                            }

                            safeSetState(() {});
                          },
                          text: 'Agregar',
                          icon: Icon(
                            Icons.receipt_long,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 48.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      Text(
                        'Tenga en cuenta que verificar toda la información, ya que si agrega esta producción, no se podrá modificar.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
