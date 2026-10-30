// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characterDetails.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcharacterDetailsVars> _$gcharacterDetailsVarsSerializer =
    _$GcharacterDetailsVarsSerializer();

class _$GcharacterDetailsVarsSerializer
    implements StructuredSerializer<GcharacterDetailsVars> {
  @override
  final Iterable<Type> types = const [
    GcharacterDetailsVars,
    _$GcharacterDetailsVars,
  ];
  @override
  final String wireName = 'GcharacterDetailsVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GcharacterDetailsVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GcharacterDetailsVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GcharacterDetailsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GcharacterDetailsVars extends GcharacterDetailsVars {
  @override
  final String id;

  factory _$GcharacterDetailsVars([
    void Function(GcharacterDetailsVarsBuilder)? updates,
  ]) => (GcharacterDetailsVarsBuilder()..update(updates))._build();

  _$GcharacterDetailsVars._({required this.id}) : super._();
  @override
  GcharacterDetailsVars rebuild(
    void Function(GcharacterDetailsVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GcharacterDetailsVarsBuilder toBuilder() =>
      GcharacterDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcharacterDetailsVars && id == other.id;
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
    return (newBuiltValueToStringHelper(
      r'GcharacterDetailsVars',
    )..add('id', id)).toString();
  }
}

class GcharacterDetailsVarsBuilder
    implements Builder<GcharacterDetailsVars, GcharacterDetailsVarsBuilder> {
  _$GcharacterDetailsVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GcharacterDetailsVarsBuilder();

  GcharacterDetailsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcharacterDetailsVars other) {
    _$v = other as _$GcharacterDetailsVars;
  }

  @override
  void update(void Function(GcharacterDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcharacterDetailsVars build() => _build();

  _$GcharacterDetailsVars _build() {
    final _$result =
        _$v ??
        _$GcharacterDetailsVars._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GcharacterDetailsVars',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
