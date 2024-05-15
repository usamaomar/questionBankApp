// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ErrorModelStruct extends BaseStruct {
  ErrorModelStruct({
    String? message,
    ErrorsStruct? errors,
  })  : _message = message,
        _errors = errors;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "errors" field.
  ErrorsStruct? _errors;
  ErrorsStruct get errors => _errors ?? ErrorsStruct();
  set errors(ErrorsStruct? val) => _errors = val;
  void updateErrors(Function(ErrorsStruct) updateFn) =>
      updateFn(_errors ??= ErrorsStruct());
  bool hasErrors() => _errors != null;

  static ErrorModelStruct fromMap(Map<String, dynamic> data) =>
      ErrorModelStruct(
        message: data['message'] as String?,
        errors: ErrorsStruct.maybeFromMap(data['errors']),
      );

  static ErrorModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ErrorModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'errors': _errors?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'errors': serializeParam(
          _errors,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ErrorModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ErrorModelStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        errors: deserializeStructParam(
          data['errors'],
          ParamType.DataStruct,
          false,
          structBuilder: ErrorsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ErrorModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ErrorModelStruct &&
        message == other.message &&
        errors == other.errors;
  }

  @override
  int get hashCode => const ListEquality().hash([message, errors]);
}

ErrorModelStruct createErrorModelStruct({
  String? message,
  ErrorsStruct? errors,
}) =>
    ErrorModelStruct(
      message: message,
      errors: errors ?? ErrorsStruct(),
    );
