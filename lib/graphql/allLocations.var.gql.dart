// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i1;

part 'allLocations.var.gql.g.dart';

abstract class GallLocationsVars
    implements Built<GallLocationsVars, GallLocationsVarsBuilder> {
  GallLocationsVars._();

  factory GallLocationsVars([Function(GallLocationsVarsBuilder b) updates]) =
      _$GallLocationsVars;

  int? get page;
  static Serializer<GallLocationsVars> get serializer =>
      _$gallLocationsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GallLocationsVars.serializer, this)
          as Map<String, dynamic>);
  static GallLocationsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GallLocationsVars.serializer, json);
}
