import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'validacion_model.dart';
export 'validacion_model.dart';

class ValidacionWidget extends StatefulWidget {
  const ValidacionWidget({super.key});

  @override
  State<ValidacionWidget> createState() => _ValidacionWidgetState();
}

class _ValidacionWidgetState extends State<ValidacionWidget>
    with TickerProviderStateMixin {
  late ValidacionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ValidacionModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (currentUserDocument?.userRol == UserRol.cliente) {
        await Future.delayed(const Duration(milliseconds: 1000));

        context.goNamed(
          'home',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.leftToRight,
            ),
          },
        );
      } else if (currentUserDocument?.userRol == UserRol.granjero) {
        await Future.delayed(const Duration(milliseconds: 1000));

        context.goNamed(
          'proyectsManager',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.leftToRight,
            ),
          },
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 1000));

        context.goNamed(
          'authUser',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.leftToRight,
            ),
          },
        );
      }
    });

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/silueta-de-vaca.png',
                  width: 130.0,
                  fit: BoxFit.cover,
                ),
              ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Agro Lab.ai',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Text(
                'Bienvenido ${currentUserEmail}',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Text(
                  'Developed by Fuve S.A.S\nwww.fuve.com.co - www.collecta.com.co',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
