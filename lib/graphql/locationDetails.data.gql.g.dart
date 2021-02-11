// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locationDetails.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLocationDetailsData> _$gLocationDetailsDataSerializer =
    new _$GLocationDetailsDataSerializer();
Serializer<GLocationDetailsData_location>
    _$gLocationDetailsDataLocationSerializer =
    new _$GLocationDetailsData_locationSerializer();
Serializer<GLocationDetailsData_location_residents>
    _$gLocationDetailsDataLocationResidentsSerializer =
    new _$GLocationDetailsData_location_residentsSerializer();

class _$GLocationDetailsDataSerializer
    implements StructuredSerializer<GLocationDetailsData> {
  @override
  final Iterable<Type> types = const [
    GLocationDetailsData,
    _$GLocationDetailsData
  ];
  @override
  final String wireName = 'GLocationDetailsData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GLocationDetailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(GLocationDetailsData_location)));
    }
    return result;
  }

  @override
  GLocationDetailsData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationDetailsDataBuilder();

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
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLocationDetailsData_location))
              as GLocationDetailsData_location);
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationDetailsData_locationSerializer
    implements StructuredSerializer<GLocationDetailsData_location> {
  @override
  final Iterable<Type> types = const [
    GLocationDetailsData_location,
    _$GLocationDetailsData_location
  ];
  @override
  final String wireName = 'GLocationDetailsData_location';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GLocationDetailsData_location object,
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
    if (object.residents != null) {
      result
        ..add('residents')
        ..add(serializers.serialize(object.residents,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GLocationDetailsData_location_residents)
            ])));
    }
    return result;
  }

  @override
  GLocationDetailsData_location deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationDetailsData_locationBuilder();

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
        case 'residents':
          result.residents.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GLocationDetailsData_location_residents)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationDetailsData_location_residentsSerializer
    implements StructuredSerializer<GLocationDetailsData_location_residents> {
  @override
  final Iterable<Type> types = const [
    GLocationDetailsData_location_residents,
    _$GLocationDetailsData_location_residents
  ];
  @override
  final String wireName = 'GLocationDetailsData_location_residents';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GLocationDetailsData_location_residents object,
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
  GLocationDetailsData_location_residents deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationDetailsData_location_residentsBuilder();

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

class _$GLocationDetailsData extends GLocationDetailsData {
  @override
  final String G__typename;
  @override
  final GLocationDetailsData_location location;

  factory _$GLocationDetailsData(
          [void Function(GLocationDetailsDataBuilder) updates]) =>
      (new GLocationDetailsDataBuilder()..update(updates)).build();

  _$GLocationDetailsData._({this.G__typename, this.location}) : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError('GLocationDetailsData', 'G__typename');
    }
  }

  @override
  GLocationDetailsData rebuild(
          void Function(GLocationDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationDetailsDataBuilder toBuilder() =>
      new GLocationDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationDetailsData &&
        G__typename == other.G__typename &&
        location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLocationDetailsData')
          ..add('G__typename', G__typename)
          ..add('location', location))
        .toString();
  }
}

class GLocationDetailsDataBuilder
    implements Builder<GLocationDetailsData, GLocationDetailsDataBuilder> {
  _$GLocationDetailsData _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GLocationDetailsData_locationBuilder _location;
  GLocationDetailsData_locationBuilder get location =>
      _$this._location ??= new GLocationDetailsData_locationBuilder();
  set location(GLocationDetailsData_locationBuilder location) =>
      _$this._location = location;

  GLocationDetailsDataBuilder() {
    GLocationDetailsData._initializeBuilder(this);
  }

  GLocationDetailsDataBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _location = _$v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationDetailsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GLocationDetailsData;
  }

  @override
  void update(void Function(GLocationDetailsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLocationDetailsData build() {
    _$GLocationDetailsData _$result;
    try {
      _$result = _$v ??
          new _$GLocationDetailsData._(
              G__typename: G__typename, location: _location?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLocationDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLocationDetailsData_location extends GLocationDetailsData_location {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final BuiltList<GLocationDetailsData_location_residents> residents;

  factory _$GLocationDetailsData_location(
          [void Function(GLocationDetailsData_locationBuilder) updates]) =>
      (new GLocationDetailsData_locationBuilder()..update(updates)).build();

  _$GLocationDetailsData_location._({this.G__typename, this.id, this.residents})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GLocationDetailsData_location', 'G__typename');
    }
  }

  @override
  GLocationDetailsData_location rebuild(
          void Function(GLocationDetailsData_locationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationDetailsData_locationBuilder toBuilder() =>
      new GLocationDetailsData_locationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationDetailsData_location &&
        G__typename == other.G__typename &&
        id == other.id &&
        residents == other.residents;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), id.hashCode), residents.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLocationDetailsData_location')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('residents', residents))
        .toString();
  }
}

class GLocationDetailsData_locationBuilder
    implements
        Builder<GLocationDetailsData_location,
            GLocationDetailsData_locationBuilder> {
  _$GLocationDetailsData_location _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ListBuilder<GLocationDetailsData_location_residents> _residents;
  ListBuilder<GLocationDetailsData_location_residents> get residents =>
      _$this._residents ??=
          new ListBuilder<GLocationDetailsData_location_residents>();
  set residents(
          ListBuilder<GLocationDetailsData_location_residents> residents) =>
      _$this._residents = residents;

  GLocationDetailsData_locationBuilder() {
    GLocationDetailsData_location._initializeBuilder(this);
  }

  GLocationDetailsData_locationBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _id = _$v.id;
      _residents = _$v.residents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationDetailsData_location other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GLocationDetailsData_location;
  }

  @override
  void update(void Function(GLocationDetailsData_locationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLocationDetailsData_location build() {
    _$GLocationDetailsData_location _$result;
    try {
      _$result = _$v ??
          new _$GLocationDetailsData_location._(
              G__typename: G__typename, id: id, residents: _residents?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'residents';
        _residents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLocationDetailsData_location', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLocationDetailsData_location_residents
    extends GLocationDetailsData_location_residents {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String image;

  factory _$GLocationDetailsData_location_residents(
          [void Function(GLocationDetailsData_location_residentsBuilder)
              updates]) =>
      (new GLocationDetailsData_location_residentsBuilder()..update(updates))
          .build();

  _$GLocationDetailsData_location_residents._(
      {this.G__typename, this.name, this.image})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GLocationDetailsData_location_residents', 'G__typename');
    }
  }

  @override
  GLocationDetailsData_location_residents rebuild(
          void Function(GLocationDetailsData_location_residentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationDetailsData_location_residentsBuilder toBuilder() =>
      new GLocationDetailsData_location_residentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationDetailsData_location_residents &&
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
            'GLocationDetailsData_location_residents')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GLocationDetailsData_location_residentsBuilder
    implements
        Builder<GLocationDetailsData_location_residents,
            GLocationDetailsData_location_residentsBuilder> {
  _$GLocationDetailsData_location_residents _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  GLocationDetailsData_location_residentsBuilder() {
    GLocationDetailsData_location_residents._initializeBuilder(this);
  }

  GLocationDetailsData_location_residentsBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _name = _$v.name;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationDetailsData_location_residents other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GLocationDetailsData_location_residents;
  }

  @override
  void update(
      void Function(GLocationDetailsData_location_residentsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLocationDetailsData_location_residents build() {
    final _$result = _$v ??
        new _$GLocationDetailsData_location_residents._(
            G__typename: G__typename, name: name, image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
