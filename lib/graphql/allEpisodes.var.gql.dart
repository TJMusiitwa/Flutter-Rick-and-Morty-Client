// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i1;

part 'allEpisodes.var.gql.g.dart';

abstract class GallEpisodesVars
    implements Built<GallEpisodesVars, GallEpisodesVarsBuilder> {
  GallEpisodesVars._();

  factory GallEpisodesVars([Function(GallEpisodesVarsBuilder b) updates]) =
      _$GallEpisodesVars;

  int? get page;
  static Serializer<GallEpisodesVars> get serializer =>
      _$gallEpisodesVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GallEpisodesVars.serializer, this)
          as Map<String, dynamic>);
  static GallEpisodesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GallEpisodesVars.serializer, json);
}
