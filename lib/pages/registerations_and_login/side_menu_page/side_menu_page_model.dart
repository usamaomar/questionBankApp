import '/flutter_flow/flutter_flow_util.dart';
import 'side_menu_page_widget.dart' show SideMenuPageWidget;
import 'package:flutter/material.dart';

class SideMenuPageModel extends FlutterFlowModel<SideMenuPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
