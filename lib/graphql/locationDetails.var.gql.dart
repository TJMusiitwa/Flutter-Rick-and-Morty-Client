// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i1;

part 'locationDetails.var.gql.g.dart';

abstract class GLocationDetailsVars
    implements Built<GLocationDetailsVars, GLocationDetailsVarsBuilder> {
  GLocationDetailsVars._();

  factory GLocationDetailsVars(
          [Function(GLocationDetailsVarsBuilder b) updates]) =
      _$GLocationDetailsVars;

  String get id;
  static Serializer<GLocationDetailsVars> get serializer =>
      _$gLocationDetailsVarsSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GLocationDetailsVars.serializer, this);
  static GLocationDetailsVars fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLocationDetailsVars.serializer, json);
}
