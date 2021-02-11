// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:ricky_n_morty/graphql/locationDetails.ast.gql.dart' as _i5;
import 'package:ricky_n_morty/graphql/locationDetails.data.gql.dart' as _i2;
import 'package:ricky_n_morty/graphql/locationDetails.var.gql.dart' as _i3;
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i6;

part 'locationDetails.req.gql.g.dart';

abstract class GLocationDetailsReq
    implements
        Built<GLocationDetailsReq, GLocationDetailsReqBuilder>,
        _i1.OperationRequest<_i2.GLocationDetailsData,
            _i3.GLocationDetailsVars> {
  GLocationDetailsReq._();

  factory GLocationDetailsReq(
      [Function(GLocationDetailsReqBuilder b) updates]) = _$GLocationDetailsReq;

  static void _initializeBuilder(GLocationDetailsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'LocationDetails')
    ..executeOnListen = true;
  _i3.GLocationDetailsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @nullable
  String get requestId;
  @nullable
  @BuiltValueField(serialize: false)
  _i2.GLocationDetailsData Function(
      _i2.GLocationDetailsData, _i2.GLocationDetailsData) get updateResult;
  @nullable
  _i2.GLocationDetailsData get optimisticResponse;
  @nullable
  String get updateCacheHandlerKey;
  @nullable
  Map<String, dynamic> get updateCacheHandlerContext;
  @nullable
  _i1.FetchPolicy get fetchPolicy;
  @nullable
  bool get executeOnListen;
  @override
  _i2.GLocationDetailsData parseData(Map<String, dynamic> json) =>
      _i2.GLocationDetailsData.fromJson(json);
  static Serializer<GLocationDetailsReq> get serializer =>
      _$gLocationDetailsReqSerializer;
  Map<String, dynamic> toJson() =>
      _i6.serializers.serializeWith(GLocationDetailsReq.serializer, this);
  static GLocationDetailsReq fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GLocationDetailsReq.serializer, json);
}
