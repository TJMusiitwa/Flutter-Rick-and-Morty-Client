// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:ricky_n_morty/graphql/episodeDetails.ast.gql.dart' as _i5;
import 'package:ricky_n_morty/graphql/episodeDetails.data.gql.dart' as _i2;
import 'package:ricky_n_morty/graphql/episodeDetails.var.gql.dart' as _i3;
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i6;

part 'episodeDetails.req.gql.g.dart';

abstract class GepisodeDetailsReq
    implements
        Built<GepisodeDetailsReq, GepisodeDetailsReqBuilder>,
        _i1.OperationRequest<_i2.GepisodeDetailsData, _i3.GepisodeDetailsVars> {
  GepisodeDetailsReq._();

  factory GepisodeDetailsReq([Function(GepisodeDetailsReqBuilder b) updates]) =
      _$GepisodeDetailsReq;

  static void _initializeBuilder(GepisodeDetailsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'episodeDetails')
    ..executeOnListen = true;
  _i3.GepisodeDetailsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GepisodeDetailsData? Function(
      _i2.GepisodeDetailsData?, _i2.GepisodeDetailsData?)? get updateResult;
  _i2.GepisodeDetailsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GepisodeDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodeDetailsData.fromJson(json);
  static Serializer<GepisodeDetailsReq> get serializer =>
      _$gepisodeDetailsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GepisodeDetailsReq.serializer, this)
          as Map<String, dynamic>);
  static GepisodeDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GepisodeDetailsReq.serializer, json);
}
