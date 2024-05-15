import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'country_code_page_model.dart';
export 'country_code_page_model.dart';

class CountryCodePageWidget extends StatefulWidget {
  const CountryCodePageWidget({super.key});

  @override
  State<CountryCodePageWidget> createState() => _CountryCodePageWidgetState();
}

class _CountryCodePageWidgetState extends State<CountryCodePageWidget> {
  late CountryCodePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountryCodePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult30l = await ApisGroup.getCountryApiCall.call();
      if ((_model.apiResult30l?.succeeded ?? true)) {
        setState(() {
          _model.listOfCountry = CountryListModelStruct.maybeFromMap(
              (_model.apiResult30l?.jsonBody ?? ''));
        });
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).info,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'f42r3ok8' /* Select Country Code */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FutureBuilder<ApiCallResponse>(
                future: ApisGroup.getCountryApiCall.call(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  final listViewGetCountryApiResponse = snapshot.data!;
                  return Builder(
                    builder: (context) {
                      final localList = CountryListModelStruct.maybeFromMap(
                                  listViewGetCountryApiResponse.jsonBody)
                              ?.countries
                              .toList() ??
                          [];
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: localList.length,
                        itemBuilder: (context, localListIndex) {
                          final localListItem = localList[localListIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                _model.updateListOfCountryStruct(
                                  (e) => e
                                    ..updateCountries(
                                      (e) => e[localListIndex]
                                        ..isSelected =
                                            localListItem.isSelected == true
                                                ? false
                                                : true,
                                    ),
                                );
                              });
                              _model.instantTimer = InstantTimer.periodic(
                                duration: const Duration(milliseconds: 3000),
                                callback: (timer) async {
                                  _model.instantTimer?.cancel();
                                  Navigator.pop(context);
                                },
                                startImmediately: true,
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 15.0, 15.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        localListItem.name,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF5A6682),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Stack(
                                              children: [
                                                if (localListItem.isSelected ==
                                                    false)
                                                  Icon(
                                                    Icons.radio_button_off,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                if (localListItem.isSelected ==
                                                    true)
                                                  const Icon(
                                                    Icons.radio_button_checked,
                                                    color: Color(0xFF1378BE),
                                                    size: 24.0,
                                                  ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  thickness: 1.0,
                                  indent: 15.0,
                                  endIndent: 15.0,
                                  color: Color(0xFF1378BE),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
