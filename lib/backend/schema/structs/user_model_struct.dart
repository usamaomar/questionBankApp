// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserModelStruct extends BaseStruct {
  UserModelStruct({
    String? name,
    String? email,
    String? updatedAt,
    String? createdAt,
    int? id,
    int? currentTeamId,
    String? mobileNumberCountry,
    String? mobileNumber,
    String? token,
    String? appVersion,
    String? appLang,
    String? appOs,
    String? tokenName,
    String? profilePhotoUrl,
  })  : _name = name,
        _email = email,
        _updatedAt = updatedAt,
        _createdAt = createdAt,
        _id = id,
        _currentTeamId = currentTeamId,
        _mobileNumberCountry = mobileNumberCountry,
        _mobileNumber = mobileNumber,
        _token = token,
        _appVersion = appVersion,
        _appLang = appLang,
        _appOs = appOs,
        _tokenName = tokenName,
        _profilePhotoUrl = profilePhotoUrl;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "current_team_id" field.
  int? _currentTeamId;
  int get currentTeamId => _currentTeamId ?? 0;
  set currentTeamId(int? val) => _currentTeamId = val;
  void incrementCurrentTeamId(int amount) =>
      _currentTeamId = currentTeamId + amount;
  bool hasCurrentTeamId() => _currentTeamId != null;

  // "mobileNumber_country" field.
  String? _mobileNumberCountry;
  String get mobileNumberCountry => _mobileNumberCountry ?? '';
  set mobileNumberCountry(String? val) => _mobileNumberCountry = val;
  bool hasMobileNumberCountry() => _mobileNumberCountry != null;

  // "mobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;
  bool hasMobileNumber() => _mobileNumber != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;
  bool hasToken() => _token != null;

  // "app_version" field.
  String? _appVersion;
  String get appVersion => _appVersion ?? '';
  set appVersion(String? val) => _appVersion = val;
  bool hasAppVersion() => _appVersion != null;

  // "app_lang" field.
  String? _appLang;
  String get appLang => _appLang ?? '';
  set appLang(String? val) => _appLang = val;
  bool hasAppLang() => _appLang != null;

  // "app_os" field.
  String? _appOs;
  String get appOs => _appOs ?? '';
  set appOs(String? val) => _appOs = val;
  bool hasAppOs() => _appOs != null;

  // "token_name" field.
  String? _tokenName;
  String get tokenName => _tokenName ?? '';
  set tokenName(String? val) => _tokenName = val;
  bool hasTokenName() => _tokenName != null;

  // "profile_photo_url" field.
  String? _profilePhotoUrl;
  String get profilePhotoUrl => _profilePhotoUrl ?? '';
  set profilePhotoUrl(String? val) => _profilePhotoUrl = val;
  bool hasProfilePhotoUrl() => _profilePhotoUrl != null;

  static UserModelStruct fromMap(Map<String, dynamic> data) => UserModelStruct(
        name: data['name'] as String?,
        email: data['email'] as String?,
        updatedAt: data['updated_at'] as String?,
        createdAt: data['created_at'] as String?,
        id: castToType<int>(data['id']),
        currentTeamId: castToType<int>(data['current_team_id']),
        mobileNumberCountry: data['mobileNumber_country'] as String?,
        mobileNumber: data['mobileNumber'] as String?,
        token: data['token'] as String?,
        appVersion: data['app_version'] as String?,
        appLang: data['app_lang'] as String?,
        appOs: data['app_os'] as String?,
        tokenName: data['token_name'] as String?,
        profilePhotoUrl: data['profile_photo_url'] as String?,
      );

  static UserModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'email': _email,
        'updated_at': _updatedAt,
        'created_at': _createdAt,
        'id': _id,
        'current_team_id': _currentTeamId,
        'mobileNumber_country': _mobileNumberCountry,
        'mobileNumber': _mobileNumber,
        'token': _token,
        'app_version': _appVersion,
        'app_lang': _appLang,
        'app_os': _appOs,
        'token_name': _tokenName,
        'profile_photo_url': _profilePhotoUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'current_team_id': serializeParam(
          _currentTeamId,
          ParamType.int,
        ),
        'mobileNumber_country': serializeParam(
          _mobileNumberCountry,
          ParamType.String,
        ),
        'mobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'app_version': serializeParam(
          _appVersion,
          ParamType.String,
        ),
        'app_lang': serializeParam(
          _appLang,
          ParamType.String,
        ),
        'app_os': serializeParam(
          _appOs,
          ParamType.String,
        ),
        'token_name': serializeParam(
          _tokenName,
          ParamType.String,
        ),
        'profile_photo_url': serializeParam(
          _profilePhotoUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserModelStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        currentTeamId: deserializeParam(
          data['current_team_id'],
          ParamType.int,
          false,
        ),
        mobileNumberCountry: deserializeParam(
          data['mobileNumber_country'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobileNumber'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        appVersion: deserializeParam(
          data['app_version'],
          ParamType.String,
          false,
        ),
        appLang: deserializeParam(
          data['app_lang'],
          ParamType.String,
          false,
        ),
        appOs: deserializeParam(
          data['app_os'],
          ParamType.String,
          false,
        ),
        tokenName: deserializeParam(
          data['token_name'],
          ParamType.String,
          false,
        ),
        profilePhotoUrl: deserializeParam(
          data['profile_photo_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserModelStruct &&
        name == other.name &&
        email == other.email &&
        updatedAt == other.updatedAt &&
        createdAt == other.createdAt &&
        id == other.id &&
        currentTeamId == other.currentTeamId &&
        mobileNumberCountry == other.mobileNumberCountry &&
        mobileNumber == other.mobileNumber &&
        token == other.token &&
        appVersion == other.appVersion &&
        appLang == other.appLang &&
        appOs == other.appOs &&
        tokenName == other.tokenName &&
        profilePhotoUrl == other.profilePhotoUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        email,
        updatedAt,
        createdAt,
        id,
        currentTeamId,
        mobileNumberCountry,
        mobileNumber,
        token,
        appVersion,
        appLang,
        appOs,
        tokenName,
        profilePhotoUrl
      ]);
}

UserModelStruct createUserModelStruct({
  String? name,
  String? email,
  String? updatedAt,
  String? createdAt,
  int? id,
  int? currentTeamId,
  String? mobileNumberCountry,
  String? mobileNumber,
  String? token,
  String? appVersion,
  String? appLang,
  String? appOs,
  String? tokenName,
  String? profilePhotoUrl,
}) =>
    UserModelStruct(
      name: name,
      email: email,
      updatedAt: updatedAt,
      createdAt: createdAt,
      id: id,
      currentTeamId: currentTeamId,
      mobileNumberCountry: mobileNumberCountry,
      mobileNumber: mobileNumber,
      token: token,
      appVersion: appVersion,
      appLang: appLang,
      appOs: appOs,
      tokenName: tokenName,
      profilePhotoUrl: profilePhotoUrl,
    );
