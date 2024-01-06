// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UiWeatherData _$UiWeatherDataFromJson(Map<String, dynamic> json) {
  return _UiWeatherData.fromJson(json);
}

/// @nodoc
mixin _$UiWeatherData {
  String get cityName => throw _privateConstructorUsedError;
  String get mainStr => throw _privateConstructorUsedError;
  double get feelLike => throw _privateConstructorUsedError;
  String get iconName => throw _privateConstructorUsedError;
  double get temp => throw _privateConstructorUsedError;
  double get minTemp => throw _privateConstructorUsedError;
  double get maxTemp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UiWeatherDataCopyWith<UiWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiWeatherDataCopyWith<$Res> {
  factory $UiWeatherDataCopyWith(
          UiWeatherData value, $Res Function(UiWeatherData) then) =
      _$UiWeatherDataCopyWithImpl<$Res, UiWeatherData>;
  @useResult
  $Res call(
      {String cityName,
      String mainStr,
      double feelLike,
      String iconName,
      double temp,
      double minTemp,
      double maxTemp});
}

/// @nodoc
class _$UiWeatherDataCopyWithImpl<$Res, $Val extends UiWeatherData>
    implements $UiWeatherDataCopyWith<$Res> {
  _$UiWeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? mainStr = null,
    Object? feelLike = null,
    Object? iconName = null,
    Object? temp = null,
    Object? minTemp = null,
    Object? maxTemp = null,
  }) {
    return _then(_value.copyWith(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      mainStr: null == mainStr
          ? _value.mainStr
          : mainStr // ignore: cast_nullable_to_non_nullable
              as String,
      feelLike: null == feelLike
          ? _value.feelLike
          : feelLike // ignore: cast_nullable_to_non_nullable
              as double,
      iconName: null == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: null == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemp: null == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UiWeatherDataImplCopyWith<$Res>
    implements $UiWeatherDataCopyWith<$Res> {
  factory _$$UiWeatherDataImplCopyWith(
          _$UiWeatherDataImpl value, $Res Function(_$UiWeatherDataImpl) then) =
      __$$UiWeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cityName,
      String mainStr,
      double feelLike,
      String iconName,
      double temp,
      double minTemp,
      double maxTemp});
}

/// @nodoc
class __$$UiWeatherDataImplCopyWithImpl<$Res>
    extends _$UiWeatherDataCopyWithImpl<$Res, _$UiWeatherDataImpl>
    implements _$$UiWeatherDataImplCopyWith<$Res> {
  __$$UiWeatherDataImplCopyWithImpl(
      _$UiWeatherDataImpl _value, $Res Function(_$UiWeatherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? mainStr = null,
    Object? feelLike = null,
    Object? iconName = null,
    Object? temp = null,
    Object? minTemp = null,
    Object? maxTemp = null,
  }) {
    return _then(_$UiWeatherDataImpl(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      mainStr: null == mainStr
          ? _value.mainStr
          : mainStr // ignore: cast_nullable_to_non_nullable
              as String,
      feelLike: null == feelLike
          ? _value.feelLike
          : feelLike // ignore: cast_nullable_to_non_nullable
              as double,
      iconName: null == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: null == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemp: null == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UiWeatherDataImpl implements _UiWeatherData {
  const _$UiWeatherDataImpl(
      {required this.cityName,
      required this.mainStr,
      required this.feelLike,
      required this.iconName,
      required this.temp,
      required this.minTemp,
      required this.maxTemp});

  factory _$UiWeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UiWeatherDataImplFromJson(json);

  @override
  final String cityName;
  @override
  final String mainStr;
  @override
  final double feelLike;
  @override
  final String iconName;
  @override
  final double temp;
  @override
  final double minTemp;
  @override
  final double maxTemp;

  @override
  String toString() {
    return 'UiWeatherData(cityName: $cityName, mainStr: $mainStr, feelLike: $feelLike, iconName: $iconName, temp: $temp, minTemp: $minTemp, maxTemp: $maxTemp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiWeatherDataImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.mainStr, mainStr) || other.mainStr == mainStr) &&
            (identical(other.feelLike, feelLike) ||
                other.feelLike == feelLike) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.minTemp, minTemp) || other.minTemp == minTemp) &&
            (identical(other.maxTemp, maxTemp) || other.maxTemp == maxTemp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cityName, mainStr, feelLike,
      iconName, temp, minTemp, maxTemp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiWeatherDataImplCopyWith<_$UiWeatherDataImpl> get copyWith =>
      __$$UiWeatherDataImplCopyWithImpl<_$UiWeatherDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UiWeatherDataImplToJson(
      this,
    );
  }
}

abstract class _UiWeatherData implements UiWeatherData {
  const factory _UiWeatherData(
      {required final String cityName,
      required final String mainStr,
      required final double feelLike,
      required final String iconName,
      required final double temp,
      required final double minTemp,
      required final double maxTemp}) = _$UiWeatherDataImpl;

  factory _UiWeatherData.fromJson(Map<String, dynamic> json) =
      _$UiWeatherDataImpl.fromJson;

  @override
  String get cityName;
  @override
  String get mainStr;
  @override
  double get feelLike;
  @override
  String get iconName;
  @override
  double get temp;
  @override
  double get minTemp;
  @override
  double get maxTemp;
  @override
  @JsonKey(ignore: true)
  _$$UiWeatherDataImplCopyWith<_$UiWeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
