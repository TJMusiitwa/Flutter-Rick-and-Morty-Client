// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:ricky_n_morty/graphql/allEpisodes.ast.gql.dart' as _i5;
import 'package:ricky_n_morty/graphql/allEpisodes.data.gql.dart' as _i2;
import 'package:ricky_n_morty/graphql/allEpisodes.var.gql.dart' as _i3;
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i6;

part 'allEpisodes.req.gql.g.dart';

abstract class GallEpisodesReq
    implements
        Built<GallEpisodesReq, GallEpisodesReqBuilder>,
        _i1.OperationRequest<_i2.GallEpisodesData, _i3.GallEpisodesVars> {
  GallEpisodesReq._();

  factory GallEpisodesReq([Function(GallEpisodesReqBuilder b) updates]) =
      _$GallEpisodesReq;

  static void _initializeBuilder(GallEpisodesReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'allEpisodes')
    ..executeOnListen = true;
  _i3.GallEpisodesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GallEpisodesData? Function(_i2.GallEpisodesData?, _i2.GallEpisodesData?)?
      get updateResult;
  _i2.GallEpisodesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GallEpisodesData? parseData(Map<String, dynamic> json) =>
      _i2.GallEpisodesData.fromJson(json);
  static Serializer<GallEpisodesReq> get serializer =>
      _$gallEpisodesReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GallEpisodesReq.serializer, this)
          as Map<String, dynamic>);
  static GallEpisodesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GallEpisodesReq.serializer, json);
}
