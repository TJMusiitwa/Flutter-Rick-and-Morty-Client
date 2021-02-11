// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i1;

part 'characterDetails.data.gql.g.dart';

abstract class GcharacterDetailsData
    implements Built<GcharacterDetailsData, GcharacterDetailsDataBuilder> {
  GcharacterDetailsData._();

  factory GcharacterDetailsData(
          [Function(GcharacterDetailsDataBuilder b) updates]) =
      _$GcharacterDetailsData;

  static void _initializeBuilder(GcharacterDetailsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  GcharacterDetailsData_character get character;
  static Serializer<GcharacterDetailsData> get serializer =>
      _$gcharacterDetailsDataSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GcharacterDetailsData.serializer, this);
  static GcharacterDetailsData fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GcharacterDetailsData.serializer, json);
}

abstract class GcharacterDetailsData_character
    implements
        Built<GcharacterDetailsData_character,
            GcharacterDetailsData_characterBuilder> {
  GcharacterDetailsData_character._();

  factory GcharacterDetailsData_character(
          [Function(GcharacterDetailsData_characterBuilder b) updates]) =
      _$GcharacterDetailsData_character;

  static void _initializeBuilder(GcharacterDetailsData_characterBuilder b) =>
      b..G__typename = 'Character';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  String get id;
  @nullable
  String get status;
  @nullable
  String get type;
  @nullable
  String get image;
  @nullable
  GcharacterDetailsData_character_origin get origin;
  @nullable
  BuiltList<GcharacterDetailsData_character_episode> get episode;
  static Serializer<GcharacterDetailsData_character> get serializer =>
      _$gcharacterDetailsDataCharacterSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GcharacterDetailsData_character.serializer, this);
  static GcharacterDetailsData_character fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GcharacterDetailsData_character.serializer, json);
}

abstract class GcharacterDetailsData_character_origin
    implements
        Built<GcharacterDetailsData_character_origin,
            GcharacterDetailsData_character_originBuilder> {
  GcharacterDetailsData_character_origin._();

  factory GcharacterDetailsData_character_origin(
          [Function(GcharacterDetailsData_character_originBuilder b) updates]) =
      _$GcharacterDetailsData_character_origin;

  static void _initializeBuilder(
          GcharacterDetailsData_character_originBuilder b) =>
      b..G__typename = 'Location';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  String get name;
  static Serializer<GcharacterDetailsData_character_origin> get serializer =>
      _$gcharacterDetailsDataCharacterOriginSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GcharacterDetailsData_character_origin.serializer, this);
  static GcharacterDetailsData_character_origin fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GcharacterDetailsData_character_origin.serializer, json);
}

abstract class GcharacterDetailsData_character_episode
    implements
        Built<GcharacterDetailsData_character_episode,
            GcharacterDetailsData_character_episodeBuilder> {
  GcharacterDetailsData_character_episode._();

  factory GcharacterDetailsData_character_episode(
      [Function(GcharacterDetailsData_character_episodeBuilder b)
          updates]) = _$GcharacterDetailsData_character_episode;

  static void _initializeBuilder(
          GcharacterDetailsData_character_episodeBuilder b) =>
      b..G__typename = 'Episode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  String get episode;
  static Serializer<GcharacterDetailsData_character_episode> get serializer =>
      _$gcharacterDetailsDataCharacterEpisodeSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GcharacterDetailsData_character_episode.serializer, this);
  static GcharacterDetailsData_character_episode fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GcharacterDetailsData_character_episode.serializer, json);
}
