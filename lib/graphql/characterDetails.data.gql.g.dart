// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characterDetails.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcharacterDetailsData> _$gcharacterDetailsDataSerializer =
    new _$GcharacterDetailsDataSerializer();
Serializer<GcharacterDetailsData_character>
    _$gcharacterDetailsDataCharacterSerializer =
    new _$GcharacterDetailsData_characterSerializer();
Serializer<GcharacterDetailsData_character_origin>
    _$gcharacterDetailsDataCharacterOriginSerializer =
    new _$GcharacterDetailsData_character_originSerializer();
Serializer<GcharacterDetailsData_character_episode>
    _$gcharacterDetailsDataCharacterEpisodeSerializer =
    new _$GcharacterDetailsData_character_episodeSerializer();

class _$GcharacterDetailsDataSerializer
    implements StructuredSerializer<GcharacterDetailsData> {
  @override
  final Iterable<Type> types = const [
    GcharacterDetailsData,
    _$GcharacterDetailsData
  ];
  @override
  final String wireName = 'GcharacterDetailsData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GcharacterDetailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.character != null) {
      result
        ..add('character')
        ..add(serializers.serialize(object.character,
            specifiedType: const FullType(GcharacterDetailsData_character)));
    }
    return result;
  }

  @override
  GcharacterDetailsData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcharacterDetailsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'character':
          result.character.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GcharacterDetailsData_character))
              as GcharacterDetailsData_character);
          break;
      }
    }

    return result.build();
  }
}

class _$GcharacterDetailsData_characterSerializer
    implements StructuredSerializer<GcharacterDetailsData_character> {
  @override
  final Iterable<Type> types = const [
    GcharacterDetailsData_character,
    _$GcharacterDetailsData_character
  ];
  @override
  final String wireName = 'GcharacterDetailsData_character';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GcharacterDetailsData_character object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.origin != null) {
      result
        ..add('origin')
        ..add(serializers.serialize(object.origin,
            specifiedType:
                const FullType(GcharacterDetailsData_character_origin)));
    }
    if (object.episode != null) {
      result
        ..add('episode')
        ..add(serializers.serialize(object.episode,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GcharacterDetailsData_character_episode)
            ])));
    }
    return result;
  }

  @override
  GcharacterDetailsData_character deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcharacterDetailsData_characterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'origin':
          result.origin.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GcharacterDetailsData_character_origin))
              as GcharacterDetailsData_character_origin);
          break;
        case 'episode':
          result.episode.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GcharacterDetailsData_character_episode)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GcharacterDetailsData_character_originSerializer
    implements StructuredSerializer<GcharacterDetailsData_character_origin> {
  @override
  final Iterable<Type> types = const [
    GcharacterDetailsData_character_origin,
    _$GcharacterDetailsData_character_origin
  ];
  @override
  final String wireName = 'GcharacterDetailsData_character_origin';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GcharacterDetailsData_character_origin object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GcharacterDetailsData_character_origin deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcharacterDetailsData_character_originBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GcharacterDetailsData_character_episodeSerializer
    implements StructuredSerializer<GcharacterDetailsData_character_episode> {
  @override
  final Iterable<Type> types = const [
    GcharacterDetailsData_character_episode,
    _$GcharacterDetailsData_character_episode
  ];
  @override
  final String wireName = 'GcharacterDetailsData_character_episode';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GcharacterDetailsData_character_episode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.episode != null) {
      result
        ..add('episode')
        ..add(serializers.serialize(object.episode,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GcharacterDetailsData_character_episode deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcharacterDetailsData_character_episodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GcharacterDetailsData extends GcharacterDetailsData {
  @override
  final String G__typename;
  @override
  final GcharacterDetailsData_character character;

  factory _$GcharacterDetailsData(
          [void Function(GcharacterDetailsDataBuilder) updates]) =>
      (new GcharacterDetailsDataBuilder()..update(updates)).build();

  _$GcharacterDetailsData._({this.G__typename, this.character}) : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GcharacterDetailsData', 'G__typename');
    }
  }

  @override
  GcharacterDetailsData rebuild(
          void Function(GcharacterDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcharacterDetailsDataBuilder toBuilder() =>
      new GcharacterDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcharacterDetailsData &&
        G__typename == other.G__typename &&
        character == other.character;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), character.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GcharacterDetailsData')
          ..add('G__typename', G__typename)
          ..add('character', character))
        .toString();
  }
}

class GcharacterDetailsDataBuilder
    implements Builder<GcharacterDetailsData, GcharacterDetailsDataBuilder> {
  _$GcharacterDetailsData _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GcharacterDetailsData_characterBuilder _character;
  GcharacterDetailsData_characterBuilder get character =>
      _$this._character ??= new GcharacterDetailsData_characterBuilder();
  set character(GcharacterDetailsData_characterBuilder character) =>
      _$this._character = character;

  GcharacterDetailsDataBuilder() {
    GcharacterDetailsData._initializeBuilder(this);
  }

  GcharacterDetailsDataBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _character = _$v.character?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcharacterDetailsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GcharacterDetailsData;
  }

  @override
  void update(void Function(GcharacterDetailsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcharacterDetailsData build() {
    _$GcharacterDetailsData _$result;
    try {
      _$result = _$v ??
          new _$GcharacterDetailsData._(
              G__typename: G__typename, character: _character?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'character';
        _character?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GcharacterDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcharacterDetailsData_character
    extends GcharacterDetailsData_character {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String status;
  @override
  final String type;
  @override
  final String image;
  @override
  final GcharacterDetailsData_character_origin origin;
  @override
  final BuiltList<GcharacterDetailsData_character_episode> episode;

  factory _$GcharacterDetailsData_character(
          [void Function(GcharacterDetailsData_characterBuilder) updates]) =>
      (new GcharacterDetailsData_characterBuilder()..update(updates)).build();

  _$GcharacterDetailsData_character._(
      {this.G__typename,
      this.id,
      this.status,
      this.type,
      this.image,
      this.origin,
      this.episode})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GcharacterDetailsData_character', 'G__typename');
    }
  }

  @override
  GcharacterDetailsData_character rebuild(
          void Function(GcharacterDetailsData_characterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcharacterDetailsData_characterBuilder toBuilder() =>
      new GcharacterDetailsData_characterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcharacterDetailsData_character &&
        G__typename == other.G__typename &&
        id == other.id &&
        status == other.status &&
        type == other.type &&
        image == other.image &&
        origin == other.origin &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        status.hashCode),
                    type.hashCode),
                image.hashCode),
            origin.hashCode),
        episode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GcharacterDetailsData_character')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('status', status)
          ..add('type', type)
          ..add('image', image)
          ..add('origin', origin)
          ..add('episode', episode))
        .toString();
  }
}

class GcharacterDetailsData_characterBuilder
    implements
        Builder<GcharacterDetailsData_character,
            GcharacterDetailsData_characterBuilder> {
  _$GcharacterDetailsData_character _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  GcharacterDetailsData_character_originBuilder _origin;
  GcharacterDetailsData_character_originBuilder get origin =>
      _$this._origin ??= new GcharacterDetailsData_character_originBuilder();
  set origin(GcharacterDetailsData_character_originBuilder origin) =>
      _$this._origin = origin;

  ListBuilder<GcharacterDetailsData_character_episode> _episode;
  ListBuilder<GcharacterDetailsData_character_episode> get episode =>
      _$this._episode ??=
          new ListBuilder<GcharacterDetailsData_character_episode>();
  set episode(ListBuilder<GcharacterDetailsData_character_episode> episode) =>
      _$this._episode = episode;

  GcharacterDetailsData_characterBuilder() {
    GcharacterDetailsData_character._initializeBuilder(this);
  }

  GcharacterDetailsData_characterBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _id = _$v.id;
      _status = _$v.status;
      _type = _$v.type;
      _image = _$v.image;
      _origin = _$v.origin?.toBuilder();
      _episode = _$v.episode?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcharacterDetailsData_character other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GcharacterDetailsData_character;
  }

  @override
  void update(void Function(GcharacterDetailsData_characterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcharacterDetailsData_character build() {
    _$GcharacterDetailsData_character _$result;
    try {
      _$result = _$v ??
          new _$GcharacterDetailsData_character._(
              G__typename: G__typename,
              id: id,
              status: status,
              type: type,
              image: image,
              origin: _origin?.build(),
              episode: _episode?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'origin';
        _origin?.build();
        _$failedField = 'episode';
        _episode?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GcharacterDetailsData_character', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcharacterDetailsData_character_origin
    extends GcharacterDetailsData_character_origin {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$GcharacterDetailsData_character_origin(
          [void Function(GcharacterDetailsData_character_originBuilder)
              updates]) =>
      (new GcharacterDetailsData_character_originBuilder()..update(updates))
          .build();

  _$GcharacterDetailsData_character_origin._({this.G__typename, this.name})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GcharacterDetailsData_character_origin', 'G__typename');
    }
  }

  @override
  GcharacterDetailsData_character_origin rebuild(
          void Function(GcharacterDetailsData_character_originBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcharacterDetailsData_character_originBuilder toBuilder() =>
      new GcharacterDetailsData_character_originBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcharacterDetailsData_character_origin &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GcharacterDetailsData_character_origin')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GcharacterDetailsData_character_originBuilder
    implements
        Builder<GcharacterDetailsData_character_origin,
            GcharacterDetailsData_character_originBuilder> {
  _$GcharacterDetailsData_character_origin _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GcharacterDetailsData_character_originBuilder() {
    GcharacterDetailsData_character_origin._initializeBuilder(this);
  }

  GcharacterDetailsData_character_originBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcharacterDetailsData_character_origin other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GcharacterDetailsData_character_origin;
  }

  @override
  void update(
      void Function(GcharacterDetailsData_character_originBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcharacterDetailsData_character_origin build() {
    final _$result = _$v ??
        new _$GcharacterDetailsData_character_origin._(
            G__typename: G__typename, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GcharacterDetailsData_character_episode
    extends GcharacterDetailsData_character_episode {
  @override
  final String G__typename;
  @override
  final String episode;

  factory _$GcharacterDetailsData_character_episode(
          [void Function(GcharacterDetailsData_character_episodeBuilder)
              updates]) =>
      (new GcharacterDetailsData_character_episodeBuilder()..update(updates))
          .build();

  _$GcharacterDetailsData_character_episode._({this.G__typename, this.episode})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GcharacterDetailsData_character_episode', 'G__typename');
    }
  }

  @override
  GcharacterDetailsData_character_episode rebuild(
          void Function(GcharacterDetailsData_character_episodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcharacterDetailsData_character_episodeBuilder toBuilder() =>
      new GcharacterDetailsData_character_episodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcharacterDetailsData_character_episode &&
        G__typename == other.G__typename &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), episode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GcharacterDetailsData_character_episode')
          ..add('G__typename', G__typename)
          ..add('episode', episode))
        .toString();
  }
}

class GcharacterDetailsData_character_episodeBuilder
    implements
        Builder<GcharacterDetailsData_character_episode,
            GcharacterDetailsData_character_episodeBuilder> {
  _$GcharacterDetailsData_character_episode _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _episode;
  String get episode => _$this._episode;
  set episode(String episode) => _$this._episode = episode;

  GcharacterDetailsData_character_episodeBuilder() {
    GcharacterDetailsData_character_episode._initializeBuilder(this);
  }

  GcharacterDetailsData_character_episodeBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _episode = _$v.episode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcharacterDetailsData_character_episode other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GcharacterDetailsData_character_episode;
  }

  @override
  void update(
      void Function(GcharacterDetailsData_character_episodeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcharacterDetailsData_character_episode build() {
    final _$result = _$v ??
        new _$GcharacterDetailsData_character_episode._(
            G__typename: G__typename, episode: episode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
