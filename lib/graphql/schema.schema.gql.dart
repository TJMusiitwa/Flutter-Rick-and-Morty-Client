// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

class GCacheControlScope extends EnumClass {
  const GCacheControlScope._(String name) : super(name);

  static const GCacheControlScope PUBLIC = _$gCacheControlScopePUBLIC;

  static const GCacheControlScope PRIVATE = _$gCacheControlScopePRIVATE;

  static Serializer<GCacheControlScope> get serializer =>
      _$gCacheControlScopeSerializer;
  static BuiltSet<GCacheControlScope> get values => _$gCacheControlScopeValues;
  static GCacheControlScope valueOf(String name) =>
      _$gCacheControlScopeValueOf(name);
}

abstract class GFilterCharacter
    implements Built<GFilterCharacter, GFilterCharacterBuilder> {
  GFilterCharacter._();

  factory GFilterCharacter([Function(GFilterCharacterBuilder b) updates]) =
      _$GFilterCharacter;

  @nullable
  String get name;
  @nullable
  String get status;
  @nullable
  String get species;
  @nullable
  String get type;
  @nullable
  String get gender;
  static Serializer<GFilterCharacter> get serializer =>
      _$gFilterCharacterSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GFilterCharacter.serializer, this);
  static GFilterCharacter fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFilterCharacter.serializer, json);
}

abstract class GFilterEpisode
    implements Built<GFilterEpisode, GFilterEpisodeBuilder> {
  GFilterEpisode._();

  factory GFilterEpisode([Function(GFilterEpisodeBuilder b) updates]) =
      _$GFilterEpisode;

  @nullable
  String get name;
  @nullable
  String get episode;
  static Serializer<GFilterEpisode> get serializer =>
      _$gFilterEpisodeSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GFilterEpisode.serializer, this);
  static GFilterEpisode fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFilterEpisode.serializer, json);
}

abstract class GFilterLocation
    implements Built<GFilterLocation, GFilterLocationBuilder> {
  GFilterLocation._();

  factory GFilterLocation([Function(GFilterLocationBuilder b) updates]) =
      _$GFilterLocation;

  @nullable
  String get name;
  @nullable
  String get type;
  @nullable
  String get dimension;
  static Serializer<GFilterLocation> get serializer =>
      _$gFilterLocationSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GFilterLocation.serializer, this);
  static GFilterLocation fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFilterLocation.serializer, json);
}

abstract class GUpload implements Built<GUpload, GUploadBuilder> {
  GUpload._();

  factory GUpload([String value]) =>
      _$GUpload((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GUpload> get serializer =>
      _i2.DefaultScalarSerializer<GUpload>(
          (Object serialized) => GUpload(serialized));
}
