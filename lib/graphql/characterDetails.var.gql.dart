// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i1;

part 'characterDetails.var.gql.g.dart';

abstract class GcharacterDetailsVars
    implements Built<GcharacterDetailsVars, GcharacterDetailsVarsBuilder> {
  GcharacterDetailsVars._();

  factory GcharacterDetailsVars(
          [Function(GcharacterDetailsVarsBuilder b) updates]) =
      _$GcharacterDetailsVars;

  String get id;
  static Serializer<GcharacterDetailsVars> get serializer =>
      _$gcharacterDetailsVarsSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GcharacterDetailsVars.serializer, this);
  static GcharacterDetailsVars fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GcharacterDetailsVars.serializer, json);
}
