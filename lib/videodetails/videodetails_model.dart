import '/flutter_flow/flutter_flow_util.dart';
import 'videodetails_widget.dart' show VideodetailsWidget;
import 'package:flutter/material.dart';

class VideodetailsModel extends FlutterFlowModel<VideodetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Menu widget.
  TabController? menuController;
  int get menuCurrentIndex =>
      menuController != null ? menuController!.index : 0;
  int get menuPreviousIndex =>
      menuController != null ? menuController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    menuController?.dispose();
  }
}
