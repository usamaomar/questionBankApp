// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ErrorsStruct extends BaseStruct {
  ErrorsStruct({
    List<String>? email,
  }) : _email = email;

  // "email" field.
  List<String>? _email;
  List<String> get email => _email ?? const [];
  set email(List<String>? val) => _email = val;
  void updateEmail(Function(List<String>) updateFn) => updateFn(_email ??= []);
  bool hasEmail() => _email != null;

  static ErrorsStruct fromMap(Map<String, dynamic> data) => ErrorsStruct(
        email: getDataList(data['email']),
      );

  static ErrorsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ErrorsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static ErrorsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ErrorsStruct(
        email: deserializeParam<String>(
          data['email'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ErrorsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ErrorsStruct && listEquality.equals(email, other.email);
  }

  @override
  int get hashCode => const ListEquality().hash([email]);
}

ErrorsStruct createErrorsStruct() => ErrorsStruct();
