import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$LocationDetails {
  factory Variables$Query$LocationDetails({required String id}) =>
      Variables$Query$LocationDetails._({r'id': id});

  Variables$Query$LocationDetails._(this._$data);

  factory Variables$Query$LocationDetails.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$LocationDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$LocationDetails<Variables$Query$LocationDetails>
  get copyWith => CopyWith$Variables$Query$LocationDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$LocationDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$LocationDetails<TRes> {
  factory CopyWith$Variables$Query$LocationDetails(
    Variables$Query$LocationDetails instance,
    TRes Function(Variables$Query$LocationDetails) then,
  ) = _CopyWithImpl$Variables$Query$LocationDetails;

  factory CopyWith$Variables$Query$LocationDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LocationDetails;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$LocationDetails<TRes>
    implements CopyWith$Variables$Query$LocationDetails<TRes> {
  _CopyWithImpl$Variables$Query$LocationDetails(this._instance, this._then);

  final Variables$Query$LocationDetails _instance;

  final TRes Function(Variables$Query$LocationDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$LocationDetails._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$LocationDetails<TRes>
    implements CopyWith$Variables$Query$LocationDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$LocationDetails(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$LocationDetails {
  Query$LocationDetails({this.location, this.$__typename = 'Query'});

  factory Query$LocationDetails.fromJson(Map<String, dynamic> json) {
    final l$location = json['location'];
    final l$$__typename = json['__typename'];
    return Query$LocationDetails(
      location: l$location == null
          ? null
          : Query$LocationDetails$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LocationDetails$location? location;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$location = location;
    final l$$__typename = $__typename;
    return Object.hashAll([l$location, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LocationDetails || runtimeType != other.runtimeType) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LocationDetails on Query$LocationDetails {
  CopyWith$Query$LocationDetails<Query$LocationDetails> get copyWith =>
      CopyWith$Query$LocationDetails(this, (i) => i);
}

abstract class CopyWith$Query$LocationDetails<TRes> {
  factory CopyWith$Query$LocationDetails(
    Query$LocationDetails instance,
    TRes Function(Query$LocationDetails) then,
  ) = _CopyWithImpl$Query$LocationDetails;

  factory CopyWith$Query$LocationDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$LocationDetails;

  TRes call({Query$LocationDetails$location? location, String? $__typename});
  CopyWith$Query$LocationDetails$location<TRes> get location;
}

class _CopyWithImpl$Query$LocationDetails<TRes>
    implements CopyWith$Query$LocationDetails<TRes> {
  _CopyWithImpl$Query$LocationDetails(this._instance, this._then);

  final Query$LocationDetails _instance;

  final TRes Function(Query$LocationDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? location = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LocationDetails(
      location: location == _undefined
          ? _instance.location
          : (location as Query$LocationDetails$location?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LocationDetails$location<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$LocationDetails$location.stub(_then(_instance))
        : CopyWith$Query$LocationDetails$location(
            local$location,
            (e) => call(location: e),
          );
  }
}

class _CopyWithStubImpl$Query$LocationDetails<TRes>
    implements CopyWith$Query$LocationDetails<TRes> {
  _CopyWithStubImpl$Query$LocationDetails(this._res);

  TRes _res;

  call({Query$LocationDetails$location? location, String? $__typename}) => _res;

  CopyWith$Query$LocationDetails$location<TRes> get location =>
      CopyWith$Query$LocationDetails$location.stub(_res);
}

const documentNodeQueryLocationDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LocationDetails'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'location'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'residents'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'image'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Query$LocationDetails _parserFn$Query$LocationDetails(
  Map<String, dynamic> data,
) => Query$LocationDetails.fromJson(data);
typedef OnQueryComplete$Query$LocationDetails = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$LocationDetails?,
);

class Options$Query$LocationDetails
    extends graphql.QueryOptions<Query$LocationDetails> {
  Options$Query$LocationDetails({
    String? operationName,
    required Variables$Query$LocationDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LocationDetails? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$LocationDetails? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$LocationDetails(data),
               ),
         onError: onError,
         document: documentNodeQueryLocationDetails,
         parserFn: _parserFn$Query$LocationDetails,
       );

  final OnQueryComplete$Query$LocationDetails? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$LocationDetails
    extends graphql.WatchQueryOptions<Query$LocationDetails> {
  WatchOptions$Query$LocationDetails({
    String? operationName,
    required Variables$Query$LocationDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LocationDetails? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryLocationDetails,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$LocationDetails,
       );
}

class FetchMoreOptions$Query$LocationDetails extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LocationDetails({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$LocationDetails variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryLocationDetails,
       );
}

extension ClientExtension$Query$LocationDetails on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LocationDetails>> query$LocationDetails(
    Options$Query$LocationDetails options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$LocationDetails> watchQuery$LocationDetails(
    WatchOptions$Query$LocationDetails options,
  ) => this.watchQuery(options);

  void writeQuery$LocationDetails({
    required Query$LocationDetails data,
    required Variables$Query$LocationDetails variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryLocationDetails),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$LocationDetails? readQuery$LocationDetails({
    required Variables$Query$LocationDetails variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryLocationDetails,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LocationDetails.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LocationDetails> useQuery$LocationDetails(
  Options$Query$LocationDetails options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$LocationDetails> useWatchQuery$LocationDetails(
  WatchOptions$Query$LocationDetails options,
) => graphql_flutter.useWatchQuery(options);

class Query$LocationDetails$Widget
    extends graphql_flutter.Query<Query$LocationDetails> {
  Query$LocationDetails$Widget({
    widgets.Key? key,
    required Options$Query$LocationDetails options,
    required graphql_flutter.QueryBuilder<Query$LocationDetails> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$LocationDetails$location {
  Query$LocationDetails$location({
    this.id,
    this.residents,
    this.$__typename = 'Location',
  });

  factory Query$LocationDetails$location.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$residents = json['residents'];
    final l$$__typename = json['__typename'];
    return Query$LocationDetails$location(
      id: (l$id as String?),
      residents: (l$residents as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$LocationDetails$location$residents.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final List<Query$LocationDetails$location$residents?>? residents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$residents = residents;
    _resultData['residents'] = l$residents?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$residents = residents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$residents == null ? null : Object.hashAll(l$residents.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LocationDetails$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$residents = residents;
    final lOther$residents = other.residents;
    if (l$residents != null && lOther$residents != null) {
      if (l$residents.length != lOther$residents.length) {
        return false;
      }
      for (int i = 0; i < l$residents.length; i++) {
        final l$residents$entry = l$residents[i];
        final lOther$residents$entry = lOther$residents[i];
        if (l$residents$entry != lOther$residents$entry) {
          return false;
        }
      }
    } else if (l$residents != lOther$residents) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LocationDetails$location
    on Query$LocationDetails$location {
  CopyWith$Query$LocationDetails$location<Query$LocationDetails$location>
  get copyWith => CopyWith$Query$LocationDetails$location(this, (i) => i);
}

abstract class CopyWith$Query$LocationDetails$location<TRes> {
  factory CopyWith$Query$LocationDetails$location(
    Query$LocationDetails$location instance,
    TRes Function(Query$LocationDetails$location) then,
  ) = _CopyWithImpl$Query$LocationDetails$location;

  factory CopyWith$Query$LocationDetails$location.stub(TRes res) =
      _CopyWithStubImpl$Query$LocationDetails$location;

  TRes call({
    String? id,
    List<Query$LocationDetails$location$residents?>? residents,
    String? $__typename,
  });
  TRes residents(
    Iterable<Query$LocationDetails$location$residents?>? Function(
      Iterable<
        CopyWith$Query$LocationDetails$location$residents<
          Query$LocationDetails$location$residents
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LocationDetails$location<TRes>
    implements CopyWith$Query$LocationDetails$location<TRes> {
  _CopyWithImpl$Query$LocationDetails$location(this._instance, this._then);

  final Query$LocationDetails$location _instance;

  final TRes Function(Query$LocationDetails$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? residents = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LocationDetails$location(
      id: id == _undefined ? _instance.id : (id as String?),
      residents: residents == _undefined
          ? _instance.residents
          : (residents as List<Query$LocationDetails$location$residents?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes residents(
    Iterable<Query$LocationDetails$location$residents?>? Function(
      Iterable<
        CopyWith$Query$LocationDetails$location$residents<
          Query$LocationDetails$location$residents
        >?
      >?,
    )
    _fn,
  ) => call(
    residents: _fn(
      _instance.residents?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LocationDetails$location$residents(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$LocationDetails$location<TRes>
    implements CopyWith$Query$LocationDetails$location<TRes> {
  _CopyWithStubImpl$Query$LocationDetails$location(this._res);

  TRes _res;

  call({
    String? id,
    List<Query$LocationDetails$location$residents?>? residents,
    String? $__typename,
  }) => _res;

  residents(_fn) => _res;
}

class Query$LocationDetails$location$residents {
  Query$LocationDetails$location$residents({
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory Query$LocationDetails$location$residents.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$LocationDetails$location$residents(
      name: (l$name as String?),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$image, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LocationDetails$location$residents ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LocationDetails$location$residents
    on Query$LocationDetails$location$residents {
  CopyWith$Query$LocationDetails$location$residents<
    Query$LocationDetails$location$residents
  >
  get copyWith =>
      CopyWith$Query$LocationDetails$location$residents(this, (i) => i);
}

abstract class CopyWith$Query$LocationDetails$location$residents<TRes> {
  factory CopyWith$Query$LocationDetails$location$residents(
    Query$LocationDetails$location$residents instance,
    TRes Function(Query$LocationDetails$location$residents) then,
  ) = _CopyWithImpl$Query$LocationDetails$location$residents;

  factory CopyWith$Query$LocationDetails$location$residents.stub(TRes res) =
      _CopyWithStubImpl$Query$LocationDetails$location$residents;

  TRes call({String? name, String? image, String? $__typename});
}

class _CopyWithImpl$Query$LocationDetails$location$residents<TRes>
    implements CopyWith$Query$LocationDetails$location$residents<TRes> {
  _CopyWithImpl$Query$LocationDetails$location$residents(
    this._instance,
    this._then,
  );

  final Query$LocationDetails$location$residents _instance;

  final TRes Function(Query$LocationDetails$location$residents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LocationDetails$location$residents(
      name: name == _undefined ? _instance.name : (name as String?),
      image: image == _undefined ? _instance.image : (image as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LocationDetails$location$residents<TRes>
    implements CopyWith$Query$LocationDetails$location$residents<TRes> {
  _CopyWithStubImpl$Query$LocationDetails$location$residents(this._res);

  TRes _res;

  call({String? name, String? image, String? $__typename}) => _res;
}
