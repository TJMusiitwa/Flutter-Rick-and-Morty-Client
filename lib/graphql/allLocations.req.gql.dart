// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:ricky_n_morty/graphql/allLocations.ast.gql.dart' as _i5;
import 'package:ricky_n_morty/graphql/allLocations.data.gql.dart' as _i2;
import 'package:ricky_n_morty/graphql/allLocations.var.gql.dart' as _i3;
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i6;

part 'allLocations.req.gql.g.dart';

abstract class GallLocationsReq
    implements
        Built<GallLocationsReq, GallLocationsReqBuilder>,
        _i1.OperationRequest<_i2.GallLocationsData, _i3.GallLocationsVars> {
  GallLocationsReq._();

  factory GallLocationsReq([Function(GallLocationsReqBuilder b) updates]) =
      _$GallLocationsReq;

  static void _initializeBuilder(GallLocationsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'allLocations')
    ..executeOnListen = true;
  _i3.GallLocationsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @nullable
  String get requestId;
  @nullable
  @BuiltValueField(serialize: false)
  _i2.GallLocationsData Function(_i2.GallLocationsData, _i2.GallLocationsData)
      get updateResult;
  @nullable
  _i2.GallLocationsData get optimisticResponse;
  @nullable
  String get updateCacheHandlerKey;
  @nullable
  Map<String, dynamic> get updateCacheHandlerContext;
  @nullable
  _i1.FetchPolicy get fetchPolicy;
  @nullable
  bool get executeOnListen;
  @override
  _i2.GallLocationsData parseData(Map<String, dynamic> json) =>
      _i2.GallLocationsData.fromJson(json);
  static Serializer<GallLocationsReq> get serializer =>
      _$gallLocationsReqSerializer;
  Map<String, dynamic> toJson() =>
      _i6.serializers.serializeWith(GallLocationsReq.serializer, this);
  static GallLocationsReq fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GallLocationsReq.serializer, json);
}
