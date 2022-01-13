// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bored_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoredModel _$BoredModelFromJson(Map<String, dynamic> json) {
  return _BoredModel.fromJson(json);
}

/// @nodoc
class _$BoredModelTearOff {
  const _$BoredModelTearOff();

  _BoredModel call(
      {String? activity,
      double? accessibility,
      String? type,
      int? participants,
      double? price,
      String? link,
      String? key}) {
    return _BoredModel(
      activity: activity,
      accessibility: accessibility,
      type: type,
      participants: participants,
      price: price,
      link: link,
      key: key,
    );
  }

  BoredModel fromJson(Map<String, Object?> json) {
    return BoredModel.fromJson(json);
  }
}

/// @nodoc
const $BoredModel = _$BoredModelTearOff();

/// @nodoc
mixin _$BoredModel {
  String? get activity => throw _privateConstructorUsedError;
  double? get accessibility => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get participants => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoredModelCopyWith<BoredModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoredModelCopyWith<$Res> {
  factory $BoredModelCopyWith(
          BoredModel value, $Res Function(BoredModel) then) =
      _$BoredModelCopyWithImpl<$Res>;
  $Res call(
      {String? activity,
      double? accessibility,
      String? type,
      int? participants,
      double? price,
      String? link,
      String? key});
}

/// @nodoc
class _$BoredModelCopyWithImpl<$Res> implements $BoredModelCopyWith<$Res> {
  _$BoredModelCopyWithImpl(this._value, this._then);

  final BoredModel _value;
  // ignore: unused_field
  final $Res Function(BoredModel) _then;

  @override
  $Res call({
    Object? activity = freezed,
    Object? accessibility = freezed,
    Object? type = freezed,
    Object? participants = freezed,
    Object? price = freezed,
    Object? link = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      accessibility: accessibility == freezed
          ? _value.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as double?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BoredModelCopyWith<$Res> implements $BoredModelCopyWith<$Res> {
  factory _$BoredModelCopyWith(
          _BoredModel value, $Res Function(_BoredModel) then) =
      __$BoredModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? activity,
      double? accessibility,
      String? type,
      int? participants,
      double? price,
      String? link,
      String? key});
}

/// @nodoc
class __$BoredModelCopyWithImpl<$Res> extends _$BoredModelCopyWithImpl<$Res>
    implements _$BoredModelCopyWith<$Res> {
  __$BoredModelCopyWithImpl(
      _BoredModel _value, $Res Function(_BoredModel) _then)
      : super(_value, (v) => _then(v as _BoredModel));

  @override
  _BoredModel get _value => super._value as _BoredModel;

  @override
  $Res call({
    Object? activity = freezed,
    Object? accessibility = freezed,
    Object? type = freezed,
    Object? participants = freezed,
    Object? price = freezed,
    Object? link = freezed,
    Object? key = freezed,
  }) {
    return _then(_BoredModel(
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      accessibility: accessibility == freezed
          ? _value.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as double?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoredModel extends _BoredModel {
  _$_BoredModel(
      {this.activity,
      this.accessibility,
      this.type,
      this.participants,
      this.price,
      this.link,
      this.key})
      : super._();

  factory _$_BoredModel.fromJson(Map<String, dynamic> json) =>
      _$$_BoredModelFromJson(json);

  @override
  final String? activity;
  @override
  final double? accessibility;
  @override
  final String? type;
  @override
  final int? participants;
  @override
  final double? price;
  @override
  final String? link;
  @override
  final String? key;

  @override
  String toString() {
    return 'BoredModel(activity: $activity, accessibility: $accessibility, type: $type, participants: $participants, price: $price, link: $link, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BoredModel &&
            const DeepCollectionEquality().equals(other.activity, activity) &&
            const DeepCollectionEquality()
                .equals(other.accessibility, accessibility) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.participants, participants) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(activity),
      const DeepCollectionEquality().hash(accessibility),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(participants),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  _$BoredModelCopyWith<_BoredModel> get copyWith =>
      __$BoredModelCopyWithImpl<_BoredModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoredModelToJson(this);
  }
}

abstract class _BoredModel extends BoredModel {
  factory _BoredModel(
      {String? activity,
      double? accessibility,
      String? type,
      int? participants,
      double? price,
      String? link,
      String? key}) = _$_BoredModel;
  _BoredModel._() : super._();

  factory _BoredModel.fromJson(Map<String, dynamic> json) =
      _$_BoredModel.fromJson;

  @override
  String? get activity;
  @override
  double? get accessibility;
  @override
  String? get type;
  @override
  int? get participants;
  @override
  double? get price;
  @override
  String? get link;
  @override
  String? get key;
  @override
  @JsonKey(ignore: true)
  _$BoredModelCopyWith<_BoredModel> get copyWith =>
      throw _privateConstructorUsedError;
}
