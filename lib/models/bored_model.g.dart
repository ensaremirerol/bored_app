// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bored_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoredModel _$$_BoredModelFromJson(Map<String, dynamic> json) =>
    _$_BoredModel(
      activity: json['activity'] as String?,
      accessibility: (json['accessibility'] as num?)?.toDouble(),
      type: json['type'] as String?,
      participants: json['participants'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      link: json['link'] as String?,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$$_BoredModelToJson(_$_BoredModel instance) =>
    <String, dynamic>{
      'activity': instance.activity,
      'accessibility': instance.accessibility,
      'type': instance.type,
      'participants': instance.participants,
      'price': instance.price,
      'link': instance.link,
      'key': instance.key,
    };
