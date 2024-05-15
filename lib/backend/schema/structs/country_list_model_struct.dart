// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountryListModelStruct extends BaseStruct {
  CountryListModelStruct({
    List<CountriesStruct>? countries,
  }) : _countries = countries;

  // "countries" field.
  List<CountriesStruct>? _countries;
  List<CountriesStruct> get countries => _countries ?? const [];
  set countries(List<CountriesStruct>? val) => _countries = val;
  void updateCountries(Function(List<CountriesStruct>) updateFn) =>
      updateFn(_countries ??= []);
  bool hasCountries() => _countries != null;

  static CountryListModelStruct fromMap(Map<String, dynamic> data) =>
      CountryListModelStruct(
        countries: getStructList(
          data['countries'],
          CountriesStruct.fromMap,
        ),
      );

  static CountryListModelStruct? maybeFromMap(dynamic data) => data is Map
      ? CountryListModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'countries': _countries?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'countries': serializeParam(
          _countries,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static CountryListModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CountryListModelStruct(
        countries: deserializeStructParam<CountriesStruct>(
          data['countries'],
          ParamType.DataStruct,
          true,
          structBuilder: CountriesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CountryListModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CountryListModelStruct &&
        listEquality.equals(countries, other.countries);
  }

  @override
  int get hashCode => const ListEquality().hash([countries]);
}

CountryListModelStruct createCountryListModelStruct() =>
    CountryListModelStruct();
