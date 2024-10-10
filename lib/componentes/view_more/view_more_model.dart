import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes/carrusel/carrusel_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'view_more_widget.dart' show ViewMoreWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ViewMoreModel extends FlutterFlowModel<ViewMoreWidget> {
  ///  Local state fields for this component.

  List<String> imgName = [];
  void addToImgName(String item) => imgName.add(item);
  void removeFromImgName(String item) => imgName.remove(item);
  void removeAtIndexFromImgName(int index) => imgName.removeAt(index);
  void insertAtIndexInImgName(int index, String item) =>
      imgName.insert(index, item);
  void updateImgNameAtIndex(int index, Function(String) updateFn) =>
      imgName[index] = updateFn(imgName[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
