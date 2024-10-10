import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes/view_more/view_more_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'proyectos_user_model.dart';
export 'proyectos_user_model.dart';

class ProyectosUserWidget extends StatefulWidget {
  const ProyectosUserWidget({super.key});

  @override
  State<ProyectosUserWidget> createState() => _ProyectosUserWidgetState();
}

class _ProyectosUserWidgetState extends State<ProyectosUserWidget> {
  late ProyectosUserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProyectosUserModel());

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
                'home',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.leftToRight,
                  ),
                },
              );
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
            child: Text(
              'Mis proyectos',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
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
                                    'A continuación se muestran sus proyectos más recientes.',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              StreamBuilder<List<ProyectsRecord>>(
                                stream: queryProyectsRecord(
                                  queryBuilder: (proyectsRecord) =>
                                      proyectsRecord.where(
                                    'userCustomerId',
                                    arrayContains: currentUserReference,
                                  ),
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
                                  List<ProyectsRecord>
                                      listViewProyectsRecordList =
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
                                        listViewProyectsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 12.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewProyectsRecord =
                                          listViewProyectsRecordList[
                                              listViewIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          constraints: BoxConstraints(
                                            maxWidth: 570.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  dateTimeFormat(
                                                      "yMMMd",
                                                      listViewProyectsRecord
                                                          .createTime!),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      listViewProyectsRecord
                                                          .proyectImage,
                                                      'https://firebasestorage.googleapis.com/v0/b/leche-61850.appspot.com/o/jorien-loman-00YD5QLyaGU-unsplash%20(1).png?alt=media&token=a647ff7a-05f9-4350-9d91-eb3ff2f95576',
                                                    ),
                                                    width: double.infinity,
                                                    height: 300.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Flexible(
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
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  listViewProyectsRecord
                                                                      .city,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                            Text(
                                                              listViewProyectsRecord
                                                                  .proyectName,
                                                              textAlign:
                                                                  TextAlign.end,
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
                                                            RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: listViewProyectsRecord
                                                                        .productionType,
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Readex Pro',
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '  ',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: listViewProyectsRecord
                                                                        .productionValue
                                                                        .toString(),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              'Duración: ${listViewProyectsRecord.productionTime}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Text(
                                                              'Ingresos: ${listViewProyectsRecord.proyectProduction}/día  aprox.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 3.0)),
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 2.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Container(
                                                            width: 128.0,
                                                            height: 35.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: () {
                                                                if (listViewProyectsRecord
                                                                        .proyectStatus ==
                                                                    StatusProyect
                                                                        .open) {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary;
                                                                } else if (listViewProyectsRecord
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
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: () {
                                                                  if (listViewProyectsRecord
                                                                          .proyectStatus ==
                                                                      StatusProyect
                                                                          .open) {
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary;
                                                                  } else if (listViewProyectsRecord
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
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Text(
                                                                  () {
                                                                    if (listViewProyectsRecord
                                                                            .proyectStatus ==
                                                                        StatusProyect
                                                                            .open) {
                                                                      return 'Activo';
                                                                    } else if (listViewProyectsRecord
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00FFFFFF),
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return GestureDetector(
                                                                  onTap: () =>
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus(),
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          MediaQuery.sizeOf(context).height *
                                                                              0.9,
                                                                      child:
                                                                          ViewMoreWidget(
                                                                        proyectId:
                                                                            listViewProyectsRecord.proyectId!,
                                                                        proyectName:
                                                                            listViewProyectsRecord.proyectName,
                                                                        statusProyect:
                                                                            listViewProyectsRecord.proyectStatus,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));
                                                          },
                                                          text: '',
                                                          icon: FaIcon(
                                                            FontAwesomeIcons
                                                                .stickerMule,
                                                            size: 24.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 128.0,
                                                            height: 35.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 2.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent1,
                                                            hoverBorderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            hoverTextColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                context
                                                                    .pushNamed(
                                                                  'production',
                                                                  queryParameters:
                                                                      {
                                                                    'proyectId':
                                                                        serializeParam(
                                                                      listViewProyectsRecord
                                                                          .proyectId,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                    'proyectName':
                                                                        serializeParam(
                                                                      listViewProyectsRecord
                                                                          .proyectName,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              text: '',
                                                              icon: Icon(
                                                                Icons.moving,
                                                                size: 24.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 60.0,
                                                                height: 35.0,
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
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
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 2.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                hoverColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                hoverBorderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 2.0,
                                                                ),
                                                                hoverTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                              ),
                                                            ),
                                                            FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                context
                                                                    .pushNamed(
                                                                  'expenses',
                                                                  queryParameters:
                                                                      {
                                                                    'proyectId':
                                                                        serializeParam(
                                                                      listViewProyectsRecord
                                                                          .proyectId,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                    'proyectName':
                                                                        serializeParam(
                                                                      listViewProyectsRecord
                                                                          .proyectName,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              text: '',
                                                              icon: Icon(
                                                                Icons
                                                                    .money_off_sharp,
                                                                size: 24.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 60.0,
                                                                height: 35.0,
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
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
                                                                    .tertiary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 2.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                hoverColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                hoverBorderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 2.0,
                                                                ),
                                                                hoverTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 5.0)),
                                                    ),
                                                  ],
                                                ),
                                              ].divide(SizedBox(height: 10.0)),
                                            ),
                                          ),
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
