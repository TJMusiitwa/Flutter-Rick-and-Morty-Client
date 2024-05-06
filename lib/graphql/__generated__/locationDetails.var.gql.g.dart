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
  Iterable<Object?> serialize(
      Serializers serializers, GLocationDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLocationDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationDetailsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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
          [void Function(GLocationDetailsVarsBuilder)? updates]) =>
      (new GLocationDetailsVarsBuilder()..update(updates))._build();

  _$GLocationDetailsVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GLocationDetailsVars', 'id');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLocationDetailsVars')..add('id', id))
        .toString();
  }
}

class GLocationDetailsVarsBuilder
    implements Builder<GLocationDetailsVars, GLocationDetailsVarsBuilder> {
  _$GLocationDetailsVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GLocationDetailsVarsBuilder();

  GLocationDetailsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationDetailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocationDetailsVars;
  }

  @override
  void update(void Function(GLocationDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocationDetailsVars build() => _build();

  _$GLocationDetailsVars _build() {
    final _$result = _$v ??
        new _$GLocationDetailsVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GLocationDetailsVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
