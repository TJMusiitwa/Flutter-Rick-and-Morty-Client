// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodeDetails.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GepisodeDetailsData> _$gepisodeDetailsDataSerializer =
    new _$GepisodeDetailsDataSerializer();
Serializer<GepisodeDetailsData_episode> _$gepisodeDetailsDataEpisodeSerializer =
    new _$GepisodeDetailsData_episodeSerializer();
Serializer<GepisodeDetailsData_episode_characters>
    _$gepisodeDetailsDataEpisodeCharactersSerializer =
    new _$GepisodeDetailsData_episode_charactersSerializer();

class _$GepisodeDetailsDataSerializer
    implements StructuredSerializer<GepisodeDetailsData> {
  @override
  final Iterable<Type> types = const [
    GepisodeDetailsData,
    _$GepisodeDetailsData
  ];
  @override
  final String wireName = 'GepisodeDetailsData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GepisodeDetailsData object,
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
            specifiedType: const FullType(GepisodeDetailsData_episode)));
    }
    return result;
  }

  @override
  GepisodeDetailsData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeDetailsDataBuilder();

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
          result.episode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GepisodeDetailsData_episode))
              as GepisodeDetailsData_episode);
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeDetailsData_episodeSerializer
    implements StructuredSerializer<GepisodeDetailsData_episode> {
  @override
  final Iterable<Type> types = const [
    GepisodeDetailsData_episode,
    _$GepisodeDetailsData_episode
  ];
  @override
  final String wireName = 'GepisodeDetailsData_episode';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GepisodeDetailsData_episode object,
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
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.air_date != null) {
      result
        ..add('air_date')
        ..add(serializers.serialize(object.air_date,
            specifiedType: const FullType(String)));
    }
    if (object.episode != null) {
      result
        ..add('episode')
        ..add(serializers.serialize(object.episode,
            specifiedType: const FullType(String)));
    }
    if (object.characters != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(object.characters,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GepisodeDetailsData_episode_characters)
            ])));
    }
    return result;
  }

  @override
  GepisodeDetailsData_episode deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeDetailsData_episodeBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'air_date':
          result.air_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GepisodeDetailsData_episode_characters)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeDetailsData_episode_charactersSerializer
    implements StructuredSerializer<GepisodeDetailsData_episode_characters> {
  @override
  final Iterable<Type> types = const [
    GepisodeDetailsData_episode_characters,
    _$GepisodeDetailsData_episode_characters
  ];
  @override
  final String wireName = 'GepisodeDetailsData_episode_characters';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GepisodeDetailsData_episode_characters object,
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
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodeDetailsData_episode_characters deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeDetailsData_episode_charactersBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeDetailsData extends GepisodeDetailsData {
  @override
  final String G__typename;
  @override
  final GepisodeDetailsData_episode episode;

  factory _$GepisodeDetailsData(
          [void Function(GepisodeDetailsDataBuilder) updates]) =>
      (new GepisodeDetailsDataBuilder()..update(updates)).build();

  _$GepisodeDetailsData._({this.G__typename, this.episode}) : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError('GepisodeDetailsData', 'G__typename');
    }
  }

  @override
  GepisodeDetailsData rebuild(
          void Function(GepisodeDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeDetailsDataBuilder toBuilder() =>
      new GepisodeDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeDetailsData &&
        G__typename == other.G__typename &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), episode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GepisodeDetailsData')
          ..add('G__typename', G__typename)
          ..add('episode', episode))
        .toString();
  }
}

class GepisodeDetailsDataBuilder
    implements Builder<GepisodeDetailsData, GepisodeDetailsDataBuilder> {
  _$GepisodeDetailsData _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GepisodeDetailsData_episodeBuilder _episode;
  GepisodeDetailsData_episodeBuilder get episode =>
      _$this._episode ??= new GepisodeDetailsData_episodeBuilder();
  set episode(GepisodeDetailsData_episodeBuilder episode) =>
      _$this._episode = episode;

  GepisodeDetailsDataBuilder() {
    GepisodeDetailsData._initializeBuilder(this);
  }

  GepisodeDetailsDataBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _episode = _$v.episode?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeDetailsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GepisodeDetailsData;
  }

  @override
  void update(void Function(GepisodeDetailsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GepisodeDetailsData build() {
    _$GepisodeDetailsData _$result;
    try {
      _$result = _$v ??
          new _$GepisodeDetailsData._(
              G__typename: G__typename, episode: _episode?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'episode';
        _episode?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GepisodeDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeDetailsData_episode extends GepisodeDetailsData_episode {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String air_date;
  @override
  final String episode;
  @override
  final BuiltList<GepisodeDetailsData_episode_characters> characters;

  factory _$GepisodeDetailsData_episode(
          [void Function(GepisodeDetailsData_episodeBuilder) updates]) =>
      (new GepisodeDetailsData_episodeBuilder()..update(updates)).build();

  _$GepisodeDetailsData_episode._(
      {this.G__typename,
      this.id,
      this.name,
      this.air_date,
      this.episode,
      this.characters})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GepisodeDetailsData_episode', 'G__typename');
    }
  }

  @override
  GepisodeDetailsData_episode rebuild(
          void Function(GepisodeDetailsData_episodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeDetailsData_episodeBuilder toBuilder() =>
      new GepisodeDetailsData_episodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeDetailsData_episode &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        air_date == other.air_date &&
        episode == other.episode &&
        characters == other.characters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    name.hashCode),
                air_date.hashCode),
            episode.hashCode),
        characters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GepisodeDetailsData_episode')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('air_date', air_date)
          ..add('episode', episode)
          ..add('characters', characters))
        .toString();
  }
}

class GepisodeDetailsData_episodeBuilder
    implements
        Builder<GepisodeDetailsData_episode,
            GepisodeDetailsData_episodeBuilder> {
  _$GepisodeDetailsData_episode _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _air_date;
  String get air_date => _$this._air_date;
  set air_date(String air_date) => _$this._air_date = air_date;

  String _episode;
  String get episode => _$this._episode;
  set episode(String episode) => _$this._episode = episode;

  ListBuilder<GepisodeDetailsData_episode_characters> _characters;
  ListBuilder<GepisodeDetailsData_episode_characters> get characters =>
      _$this._characters ??=
          new ListBuilder<GepisodeDetailsData_episode_characters>();
  set characters(
          ListBuilder<GepisodeDetailsData_episode_characters> characters) =>
      _$this._characters = characters;

  GepisodeDetailsData_episodeBuilder() {
    GepisodeDetailsData_episode._initializeBuilder(this);
  }

  GepisodeDetailsData_episodeBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _id = _$v.id;
      _name = _$v.name;
      _air_date = _$v.air_date;
      _episode = _$v.episode;
      _characters = _$v.characters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeDetailsData_episode other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GepisodeDetailsData_episode;
  }

  @override
  void update(void Function(GepisodeDetailsData_episodeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GepisodeDetailsData_episode build() {
    _$GepisodeDetailsData_episode _$result;
    try {
      _$result = _$v ??
          new _$GepisodeDetailsData_episode._(
              G__typename: G__typename,
              id: id,
              name: name,
              air_date: air_date,
              episode: episode,
              characters: _characters?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'characters';
        _characters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GepisodeDetailsData_episode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeDetailsData_episode_characters
    extends GepisodeDetailsData_episode_characters {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String image;

  factory _$GepisodeDetailsData_episode_characters(
          [void Function(GepisodeDetailsData_episode_charactersBuilder)
              updates]) =>
      (new GepisodeDetailsData_episode_charactersBuilder()..update(updates))
          .build();

  _$GepisodeDetailsData_episode_characters._(
      {this.G__typename, this.name, this.image})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GepisodeDetailsData_episode_characters', 'G__typename');
    }
  }

  @override
  GepisodeDetailsData_episode_characters rebuild(
          void Function(GepisodeDetailsData_episode_charactersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeDetailsData_episode_charactersBuilder toBuilder() =>
      new GepisodeDetailsData_episode_charactersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeDetailsData_episode_characters &&
        G__typename == other.G__typename &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), name.hashCode), image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GepisodeDetailsData_episode_characters')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GepisodeDetailsData_episode_charactersBuilder
    implements
        Builder<GepisodeDetailsData_episode_characters,
            GepisodeDetailsData_episode_charactersBuilder> {
  _$GepisodeDetailsData_episode_characters _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  GepisodeDetailsData_episode_charactersBuilder() {
    GepisodeDetailsData_episode_characters._initializeBuilder(this);
  }

  GepisodeDetailsData_episode_charactersBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _name = _$v.name;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeDetailsData_episode_characters other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GepisodeDetailsData_episode_characters;
  }

  @override
  void update(
      void Function(GepisodeDetailsData_episode_charactersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GepisodeDetailsData_episode_characters build() {
    final _$result = _$v ??
        new _$GepisodeDetailsData_episode_characters._(
            G__typename: G__typename, name: name, image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
