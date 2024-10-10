import '/flutter_flow/flutter_flow_util.dart';
import 'view_more_widget.dart' show ViewMoreWidget;
import 'package:flutter/material.dart';

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
