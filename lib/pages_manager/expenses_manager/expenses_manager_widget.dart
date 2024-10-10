import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes_manager/expenses_more_manager/expenses_more_manager_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'expenses_manager_model.dart';
export 'expenses_manager_model.dart';

class ExpensesManagerWidget extends StatefulWidget {
  const ExpensesManagerWidget({
    super.key,
    this.proyectId,
    this.proyectName,
  });

  final DocumentReference? proyectId;
  final String? proyectName;

  @override
  State<ExpensesManagerWidget> createState() => _ExpensesManagerWidgetState();
}

class _ExpensesManagerWidgetState extends State<ExpensesManagerWidget> {
  late ExpensesManagerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExpensesManagerModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
              color: FlutterFlowTheme.of(context).primaryText,
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
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).primaryText,
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
                maxWidth: 600.0,
              ),
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Container(
                        width: double.infinity,
                        constraints: BoxConstraints(
                          maxWidth: 1170.0,
                        ),
                        decoration: BoxDecoration(),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 0.0),
                                  child: Text(
                                    'A continuación se muestran sus gastos más recientes.',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 0.0),
                                child: Text(
                                  'Proyecto: ${widget!.proyectName}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              StreamBuilder<List<ExpensesRecord>>(
                                stream: queryExpensesRecord(
                                  queryBuilder: (expensesRecord) =>
                                      expensesRecord
                                          .where(
                                            'proyectId',
                                            isEqualTo: widget!.proyectId,
                                          )
                                          .orderBy('createTime',
                                              descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ExpensesRecord>
                                      listViewExpensesRecordList =
                                      snapshot.data!;

                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      12.0,
                                      0,
                                      44.0,
                                    ),
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewExpensesRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 12.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewExpensesRecord =
                                          listViewExpensesRecordList[
                                              listViewIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: StreamBuilder<ProyectsRecord>(
                                          stream: ProyectsRecord.getDocument(
                                              listViewExpensesRecord
                                                  .proyectId!),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }

                                            final listContainerProyectsRecord =
                                                snapshot.data!;

                                            return Container(
                                              width: double.infinity,
                                              constraints: BoxConstraints(
                                                maxWidth: 570.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      flex: 4,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              dateTimeFormat(
                                                                  "yMMMd",
                                                                  listViewExpensesRecord
                                                                      .createTime!),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        'Order #: ',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text: listViewExpensesRecord
                                                                        .reference
                                                                        .id,
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              listViewExpensesRecord
                                                                  .itemName,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Text(
                                                              'Ingreso: ${formatNumber(
                                                                listViewExpensesRecord
                                                                    .itemPrice,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                                currency: '\$',
                                                              )}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 5.0)),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            desktop: false,
                                                          ))
                                                            Container(
                                                              width: 120.0,
                                                              height: 32.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: () {
                                                                  if (listContainerProyectsRecord
                                                                          .proyectStatus ==
                                                                      StatusProyect
                                                                          .open) {
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary;
                                                                  } else if (listContainerProyectsRecord
                                                                          .proyectStatus ==
                                                                      StatusProyect
                                                                          .open) {
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary;
                                                                  } else {
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .error;
                                                                  }
                                                                }(),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                border:
                                                                    Border.all(
                                                                  color: () {
                                                                    if (listContainerProyectsRecord
                                                                            .proyectStatus ==
                                                                        StatusProyect
                                                                            .open) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary;
                                                                    } else if (listContainerProyectsRecord
                                                                            .proyectStatus ==
                                                                        StatusProyect
                                                                            .open) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary;
                                                                    } else {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .error;
                                                                    }
                                                                  }(),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    () {
                                                                      if (listContainerProyectsRecord
                                                                              .proyectStatus ==
                                                                          StatusProyect
                                                                              .open) {
                                                                        return 'Activo';
                                                                      } else if (listContainerProyectsRecord
                                                                              .proyectStatus ==
                                                                          StatusProyect
                                                                              .inProgress) {
                                                                        return 'En proceso';
                                                                      } else {
                                                                        return 'Cerrado';
                                                                      }
                                                                    }(),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          Builder(
                                                            builder: (context) =>
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap: () =>
                                                                            FocusScope.of(dialogContext).unfocus(),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 0.8,
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              ExpensesMoreManagerWidget(
                                                                            proyectName:
                                                                                listContainerProyectsRecord.proyectName,
                                                                            proyectId:
                                                                                listContainerProyectsRecord.reference,
                                                                            userName:
                                                                                currentUserDisplayName,
                                                                            createTime:
                                                                                listViewExpensesRecord.createTime,
                                                                            itemName:
                                                                                listViewExpensesRecord.itemName,
                                                                            itemPrice:
                                                                                listViewExpensesRecord.itemPrice,
                                                                            managerId:
                                                                                listViewExpensesRecord.managerId,
                                                                            managerName:
                                                                                listViewExpensesRecord.managerName,
                                                                            img1:
                                                                                listViewExpensesRecord.itemImg,
                                                                            invoice:
                                                                                listViewExpensesRecord.expensesInvoice,
                                                                            pathImg:
                                                                                listViewExpensesRecord.itemImgPath,
                                                                            pathInvoice:
                                                                                listViewExpensesRecord.expensesInvoicePath,
                                                                            pathVideo:
                                                                                null,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                              text: 'Detalles',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 120.0,
                                                                height: 35.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                elevation: 2.0,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 5.0)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
