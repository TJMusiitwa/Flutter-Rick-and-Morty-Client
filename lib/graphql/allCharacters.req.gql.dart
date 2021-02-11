// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:ricky_n_morty/graphql/allCharacters.ast.gql.dart' as _i5;
import 'package:ricky_n_morty/graphql/allCharacters.data.gql.dart' as _i2;
import 'package:ricky_n_morty/graphql/allCharacters.var.gql.dart' as _i3;
import 'package:ricky_n_morty/graphql/serializers.gql.dart' as _i6;

part 'allCharacters.req.gql.g.dart';

abstract class GallCharactersReq
    implements
        Built<GallCharactersReq, GallCharactersReqBuilder>,
        _i1.OperationRequest<_i2.GallCharactersData, _i3.GallCharactersVars> {
  GallCharactersReq._();

  factory GallCharactersReq([Function(GallCharactersReqBuilder b) updates]) =
      _$GallCharactersReq;

  static void _initializeBuilder(GallCharactersReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'allCharacters')
    ..executeOnListen = true;
  _i3.GallCharactersVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @nullable
  String get requestId;
  @nullable
  @BuiltValueField(serialize: false)
  _i2.GallCharactersData Function(
      _i2.GallCharactersData, _i2.GallCharactersData) get updateResult;
  @nullable
  _i2.GallCharactersData get optimisticResponse;
  @nullable
  String get updateCacheHandlerKey;
  @nullable
  Map<String, dynamic> get updateCacheHandlerContext;
  @nullable
  _i1.FetchPolicy get fetchPolicy;
  @nullable
  bool get executeOnListen;
  @override
  _i2.GallCharactersData parseData(Map<String, dynamic> json) =>
      _i2.GallCharactersData.fromJson(json);
  static Serializer<GallCharactersReq> get serializer =>
      _$gallCharactersReqSerializer;
  Map<String, dynamic> toJson() =>
      _i6.serializers.serializeWith(GallCharactersReq.serializer, this);
  static GallCharactersReq fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GallCharactersReq.serializer, json);
}
