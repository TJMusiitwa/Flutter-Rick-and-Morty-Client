// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locationDetails.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLocationDetailsVars> _$gLocationDetailsVarsSerializer =
    new _$GLocationDetailsVarsSerializer();

class _$GLocationDetailsVarsSerializer
    implements StructuredSerializer<GLocationDetailsVars> {
  @override
  final Iterable<Type> types = const [
    GLocationDetailsVars,
    _$GLocationDetailsVars
  ];
  @override
  final String wireName = 'GLocationDetailsVars';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GLocationDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLocationDetailsVars deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationDetailsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationDetailsVars extends GLocationDetailsVars {
  @override
  final String id;

  factory _$GLocationDetailsVars(
          [void Function(GLocationDetailsVarsBuilder) updates]) =>
      (new GLocationDetailsVarsBuilder()..update(updates)).build();

  _$GLocationDetailsVars._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('GLocationDetailsVars', 'id');
    }
  }

  @override
  GLocationDetailsVars rebuild(
          void Function(GLocationDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationDetailsVarsBuilder toBuilder() =>
      new GLocationDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationDetailsVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLocationDetailsVars')..add('id', id))
        .toString();
  }
}

class GLocationDetailsVarsBuilder
    implements Builder<GLocationDetailsVars, GLocationDetailsVarsBuilder> {
  _$GLocationDetailsVars _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  GLocationDetailsVarsBuilder();

  GLocationDetailsVarsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationDetailsVars other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GLocationDetailsVars;
  }

  @override
  void update(void Function(GLocationDetailsVarsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLocationDetailsVars build() {
    final _$result = _$v ?? new _$GLocationDetailsVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
