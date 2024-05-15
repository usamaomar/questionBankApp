import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'country_code_page_widget.dart' show CountryCodePageWidget;
import 'package:flutter/material.dart';

class CountryCodePageModel extends FlutterFlowModel<CountryCodePageWidget> {
  ///  Local state fields for this page.

  CountryListModelStruct? listOfCountry;
  void updateListOfCountryStruct(Function(CountryListModelStruct) updateFn) =>
      updateFn(listOfCountry ??= CountryListModelStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetCountryApi)] action in CountryCodePage widget.
  ApiCallResponse? apiResult30l;
  InstantTimer? instantTimer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
