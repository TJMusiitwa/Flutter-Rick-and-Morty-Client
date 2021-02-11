// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:ricky_n_morty/graphql/characterDetails.ast.gql.dart' as _i5;
import 'package:ricky_n_morty/graphql/characterDetails.data.gql.dart' as _i2;
import 'package:ricky_n_morty/graphql/characterDetails.var.gql.dart' as _i3;
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i6;

part 'characterDetails.req.gql.g.dart';

abstract class GcharacterDetailsReq
    implements
        Built<GcharacterDetailsReq, GcharacterDetailsReqBuilder>,
        _i1.OperationRequest<_i2.GcharacterDetailsData,
            _i3.GcharacterDetailsVars> {
  GcharacterDetailsReq._();

  factory GcharacterDetailsReq(
          [Function(GcharacterDetailsReqBuilder b) updates]) =
      _$GcharacterDetailsReq;

  static void _initializeBuilder(GcharacterDetailsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'characterDetails')
    ..executeOnListen = true;
  _i3.GcharacterDetailsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @nullable
  String get requestId;
  @nullable
  @BuiltValueField(serialize: false)
  _i2.GcharacterDetailsData Function(
      _i2.GcharacterDetailsData, _i2.GcharacterDetailsData) get updateResult;
  @nullable
  _i2.GcharacterDetailsData get optimisticResponse;
  @nullable
  String get updateCacheHandlerKey;
  @nullable
  Map<String, dynamic> get updateCacheHandlerContext;
  @nullable
  _i1.FetchPolicy get fetchPolicy;
  @nullable
  bool get executeOnListen;
  @override
  _i2.GcharacterDetailsData parseData(Map<String, dynamic> json) =>
      _i2.GcharacterDetailsData.fromJson(json);
  static Serializer<GcharacterDetailsReq> get serializer =>
      _$gcharacterDetailsReqSerializer;
  Map<String, dynamic> toJson() =>
      _i6.serializers.serializeWith(GcharacterDetailsReq.serializer, this);
  static GcharacterDetailsReq fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GcharacterDetailsReq.serializer, json);
}
