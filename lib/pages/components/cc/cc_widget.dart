import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cc_model.dart';
export 'cc_model.dart';

class CcWidget extends StatefulWidget {
  const CcWidget({super.key});

  @override
  State<CcWidget> createState() => _CcWidgetState();
}

class _CcWidgetState extends State<CcWidget> {
  late CcModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CcModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      FFLocalizations.of(context).getText(
        '1xojipgm' /* Hello World */,
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Poppins',
            letterSpacing: 0.0,
          ),
    );
  }
}
