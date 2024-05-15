// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountriesStruct extends BaseStruct {
  CountriesStruct({
    int? id,
    String? nameEn,
    String? nameAr,
    String? countryCode,
    String? isoCode,
    String? name,
    bool? isSelected,
  })  : _id = id,
        _nameEn = nameEn,
        _nameAr = nameAr,
        _countryCode = countryCode,
        _isoCode = isoCode,
        _name = name,
        _isSelected = isSelected;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "name_en" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  set nameEn(String? val) => _nameEn = val;
  bool hasNameEn() => _nameEn != null;

  // "name_ar" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  set nameAr(String? val) => _nameAr = val;
  bool hasNameAr() => _nameAr != null;

  // "country_code" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;
  bool hasCountryCode() => _countryCode != null;

  // "iso_code" field.
  String? _isoCode;
  String get isoCode => _isoCode ?? '';
  set isoCode(String? val) => _isoCode = val;
  bool hasIsoCode() => _isoCode != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;
  bool hasIsSelected() => _isSelected != null;

  static CountriesStruct fromMap(Map<String, dynamic> data) => CountriesStruct(
        id: castToType<int>(data['id']),
        nameEn: data['name_en'] as String?,
        nameAr: data['name_ar'] as String?,
        countryCode: data['country_code'] as String?,
        isoCode: data['iso_code'] as String?,
        name: data['name'] as String?,
        isSelected: data['isSelected'] as bool?,
      );

  static CountriesStruct? maybeFromMap(dynamic data) => data is Map
      ? CountriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name_en': _nameEn,
        'name_ar': _nameAr,
        'country_code': _countryCode,
        'iso_code': _isoCode,
        'name': _name,
        'isSelected': _isSelected,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name_en': serializeParam(
          _nameEn,
          ParamType.String,
        ),
        'name_ar': serializeParam(
          _nameAr,
          ParamType.String,
        ),
        'country_code': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'iso_code': serializeParam(
          _isoCode,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'isSelected': serializeParam(
          _isSelected,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CountriesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountriesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nameEn: deserializeParam(
          data['name_en'],
          ParamType.String,
          false,
        ),
        nameAr: deserializeParam(
          data['name_ar'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['country_code'],
          ParamType.String,
          false,
        ),
        isoCode: deserializeParam(
          data['iso_code'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        isSelected: deserializeParam(
          data['isSelected'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CountriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountriesStruct &&
        id == other.id &&
        nameEn == other.nameEn &&
        nameAr == other.nameAr &&
        countryCode == other.countryCode &&
        isoCode == other.isoCode &&
        name == other.name &&
        isSelected == other.isSelected;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, nameEn, nameAr, countryCode, isoCode, name, isSelected]);
}

CountriesStruct createCountriesStruct({
  int? id,
  String? nameEn,
  String? nameAr,
  String? countryCode,
  String? isoCode,
  String? name,
  bool? isSelected,
}) =>
    CountriesStruct(
      id: id,
      nameEn: nameEn,
      nameAr: nameAr,
      countryCode: countryCode,
      isoCode: isoCode,
      name: name,
      isSelected: isSelected,
    );
