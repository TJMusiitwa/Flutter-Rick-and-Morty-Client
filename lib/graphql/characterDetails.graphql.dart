import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$characterDetails {
  factory Variables$Query$characterDetails({required String id}) =>
      Variables$Query$characterDetails._({r'id': id});

  Variables$Query$characterDetails._(this._$data);

  factory Variables$Query$characterDetails.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$characterDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$characterDetails<Variables$Query$characterDetails>
  get copyWith => CopyWith$Variables$Query$characterDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$characterDetails ||
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

abstract class CopyWith$Variables$Query$characterDetails<TRes> {
  factory CopyWith$Variables$Query$characterDetails(
    Variables$Query$characterDetails instance,
    TRes Function(Variables$Query$characterDetails) then,
  ) = _CopyWithImpl$Variables$Query$characterDetails;

  factory CopyWith$Variables$Query$characterDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$characterDetails;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$characterDetails<TRes>
    implements CopyWith$Variables$Query$characterDetails<TRes> {
  _CopyWithImpl$Variables$Query$characterDetails(this._instance, this._then);

  final Variables$Query$characterDetails _instance;

  final TRes Function(Variables$Query$characterDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$characterDetails._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$characterDetails<TRes>
    implements CopyWith$Variables$Query$characterDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$characterDetails(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$characterDetails {
  Query$characterDetails({this.character, this.$__typename = 'Query'});

  factory Query$characterDetails.fromJson(Map<String, dynamic> json) {
    final l$character = json['character'];
    final l$$__typename = json['__typename'];
    return Query$characterDetails(
      character: l$character == null
          ? null
          : Query$characterDetails$character.fromJson(
              (l$character as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$characterDetails$character? character;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$character = character;
    _resultData['character'] = l$character?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$character = character;
    final l$$__typename = $__typename;
    return Object.hashAll([l$character, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$characterDetails || runtimeType != other.runtimeType) {
      return false;
    }
    final l$character = character;
    final lOther$character = other.character;
    if (l$character != lOther$character) {
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

extension UtilityExtension$Query$characterDetails on Query$characterDetails {
  CopyWith$Query$characterDetails<Query$characterDetails> get copyWith =>
      CopyWith$Query$characterDetails(this, (i) => i);
}

abstract class CopyWith$Query$characterDetails<TRes> {
  factory CopyWith$Query$characterDetails(
    Query$characterDetails instance,
    TRes Function(Query$characterDetails) then,
  ) = _CopyWithImpl$Query$characterDetails;

  factory CopyWith$Query$characterDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$characterDetails;

  TRes call({Query$characterDetails$character? character, String? $__typename});
  CopyWith$Query$characterDetails$character<TRes> get character;
}

class _CopyWithImpl$Query$characterDetails<TRes>
    implements CopyWith$Query$characterDetails<TRes> {
  _CopyWithImpl$Query$characterDetails(this._instance, this._then);

  final Query$characterDetails _instance;

  final TRes Function(Query$characterDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? character = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$characterDetails(
      character: character == _undefined
          ? _instance.character
          : (character as Query$characterDetails$character?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$characterDetails$character<TRes> get character {
    final local$character = _instance.character;
    return local$character == null
        ? CopyWith$Query$characterDetails$character.stub(_then(_instance))
        : CopyWith$Query$characterDetails$character(
            local$character,
            (e) => call(character: e),
          );
  }
}

class _CopyWithStubImpl$Query$characterDetails<TRes>
    implements CopyWith$Query$characterDetails<TRes> {
  _CopyWithStubImpl$Query$characterDetails(this._res);

  TRes _res;

  call({Query$characterDetails$character? character, String? $__typename}) =>
      _res;

  CopyWith$Query$characterDetails$character<TRes> get character =>
      CopyWith$Query$characterDetails$character.stub(_res);
}

const documentNodeQuerycharacterDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'characterDetails'),
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
            name: NameNode(value: 'character'),
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
                  name: NameNode(value: 'status'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'type'),
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
                  name: NameNode(value: 'origin'),
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
                  name: NameNode(value: 'episode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'episode'),
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
Query$characterDetails _parserFn$Query$characterDetails(
  Map<String, dynamic> data,
) => Query$characterDetails.fromJson(data);
typedef OnQueryComplete$Query$characterDetails = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$characterDetails?,
);

class Options$Query$characterDetails
    extends graphql.QueryOptions<Query$characterDetails> {
  Options$Query$characterDetails({
    String? operationName,
    required Variables$Query$characterDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$characterDetails? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$characterDetails? onComplete,
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
                 data == null ? null : _parserFn$Query$characterDetails(data),
               ),
         onError: onError,
         document: documentNodeQuerycharacterDetails,
         parserFn: _parserFn$Query$characterDetails,
       );

  final OnQueryComplete$Query$characterDetails? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$characterDetails
    extends graphql.WatchQueryOptions<Query$characterDetails> {
  WatchOptions$Query$characterDetails({
    String? operationName,
    required Variables$Query$characterDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$characterDetails? typedOptimisticResult,
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
         document: documentNodeQuerycharacterDetails,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$characterDetails,
       );
}

class FetchMoreOptions$Query$characterDetails extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$characterDetails({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$characterDetails variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerycharacterDetails,
       );
}

extension ClientExtension$Query$characterDetails on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$characterDetails>> query$characterDetails(
    Options$Query$characterDetails options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$characterDetails> watchQuery$characterDetails(
    WatchOptions$Query$characterDetails options,
  ) => this.watchQuery(options);

  void writeQuery$characterDetails({
    required Query$characterDetails data,
    required Variables$Query$characterDetails variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQuerycharacterDetails),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$characterDetails? readQuery$characterDetails({
    required Variables$Query$characterDetails variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerycharacterDetails,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$characterDetails.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$characterDetails>
useQuery$characterDetails(Options$Query$characterDetails options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$characterDetails> useWatchQuery$characterDetails(
  WatchOptions$Query$characterDetails options,
) => graphql_flutter.useWatchQuery(options);

class Query$characterDetails$Widget
    extends graphql_flutter.Query<Query$characterDetails> {
  Query$characterDetails$Widget({
    widgets.Key? key,
    required Options$Query$characterDetails options,
    required graphql_flutter.QueryBuilder<Query$characterDetails> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$characterDetails$character {
  Query$characterDetails$character({
    this.id,
    this.status,
    this.type,
    this.image,
    this.origin,
    this.episode,
    this.$__typename = 'Character',
  });

  factory Query$characterDetails$character.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$type = json['type'];
    final l$image = json['image'];
    final l$origin = json['origin'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$characterDetails$character(
      id: (l$id as String?),
      status: (l$status as String?),
      type: (l$type as String?),
      image: (l$image as String?),
      origin: l$origin == null
          ? null
          : Query$characterDetails$character$origin.fromJson(
              (l$origin as Map<String, dynamic>),
            ),
      episode: (l$episode as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$characterDetails$character$episode.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? status;

  final String? type;

  final String? image;

  final Query$characterDetails$character$origin? origin;

  final List<Query$characterDetails$character$episode?>? episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$origin = origin;
    _resultData['origin'] = l$origin?.toJson();
    final l$episode = episode;
    _resultData['episode'] = l$episode?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$type = type;
    final l$image = image;
    final l$origin = origin;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$type,
      l$image,
      l$origin,
      l$episode == null ? null : Object.hashAll(l$episode.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$characterDetails$character ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$origin = origin;
    final lOther$origin = other.origin;
    if (l$origin != lOther$origin) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != null && lOther$episode != null) {
      if (l$episode.length != lOther$episode.length) {
        return false;
      }
      for (int i = 0; i < l$episode.length; i++) {
        final l$episode$entry = l$episode[i];
        final lOther$episode$entry = lOther$episode[i];
        if (l$episode$entry != lOther$episode$entry) {
          return false;
        }
      }
    } else if (l$episode != lOther$episode) {
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

extension UtilityExtension$Query$characterDetails$character
    on Query$characterDetails$character {
  CopyWith$Query$characterDetails$character<Query$characterDetails$character>
  get copyWith => CopyWith$Query$characterDetails$character(this, (i) => i);
}

abstract class CopyWith$Query$characterDetails$character<TRes> {
  factory CopyWith$Query$characterDetails$character(
    Query$characterDetails$character instance,
    TRes Function(Query$characterDetails$character) then,
  ) = _CopyWithImpl$Query$characterDetails$character;

  factory CopyWith$Query$characterDetails$character.stub(TRes res) =
      _CopyWithStubImpl$Query$characterDetails$character;

  TRes call({
    String? id,
    String? status,
    String? type,
    String? image,
    Query$characterDetails$character$origin? origin,
    List<Query$characterDetails$character$episode?>? episode,
    String? $__typename,
  });
  CopyWith$Query$characterDetails$character$origin<TRes> get origin;
  TRes episode(
    Iterable<Query$characterDetails$character$episode?>? Function(
      Iterable<
        CopyWith$Query$characterDetails$character$episode<
          Query$characterDetails$character$episode
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$characterDetails$character<TRes>
    implements CopyWith$Query$characterDetails$character<TRes> {
  _CopyWithImpl$Query$characterDetails$character(this._instance, this._then);

  final Query$characterDetails$character _instance;

  final TRes Function(Query$characterDetails$character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? type = _undefined,
    Object? image = _undefined,
    Object? origin = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$characterDetails$character(
      id: id == _undefined ? _instance.id : (id as String?),
      status: status == _undefined ? _instance.status : (status as String?),
      type: type == _undefined ? _instance.type : (type as String?),
      image: image == _undefined ? _instance.image : (image as String?),
      origin: origin == _undefined
          ? _instance.origin
          : (origin as Query$characterDetails$character$origin?),
      episode: episode == _undefined
          ? _instance.episode
          : (episode as List<Query$characterDetails$character$episode?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$characterDetails$character$origin<TRes> get origin {
    final local$origin = _instance.origin;
    return local$origin == null
        ? CopyWith$Query$characterDetails$character$origin.stub(
            _then(_instance),
          )
        : CopyWith$Query$characterDetails$character$origin(
            local$origin,
            (e) => call(origin: e),
          );
  }

  TRes episode(
    Iterable<Query$characterDetails$character$episode?>? Function(
      Iterable<
        CopyWith$Query$characterDetails$character$episode<
          Query$characterDetails$character$episode
        >?
      >?,
    )
    _fn,
  ) => call(
    episode: _fn(
      _instance.episode?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$characterDetails$character$episode(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$characterDetails$character<TRes>
    implements CopyWith$Query$characterDetails$character<TRes> {
  _CopyWithStubImpl$Query$characterDetails$character(this._res);

  TRes _res;

  call({
    String? id,
    String? status,
    String? type,
    String? image,
    Query$characterDetails$character$origin? origin,
    List<Query$characterDetails$character$episode?>? episode,
    String? $__typename,
  }) => _res;

  CopyWith$Query$characterDetails$character$origin<TRes> get origin =>
      CopyWith$Query$characterDetails$character$origin.stub(_res);

  episode(_fn) => _res;
}

class Query$characterDetails$character$origin {
  Query$characterDetails$character$origin({
    this.name,
    this.$__typename = 'Location',
  });

  factory Query$characterDetails$character$origin.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$characterDetails$character$origin(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$characterDetails$character$origin ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$characterDetails$character$origin
    on Query$characterDetails$character$origin {
  CopyWith$Query$characterDetails$character$origin<
    Query$characterDetails$character$origin
  >
  get copyWith =>
      CopyWith$Query$characterDetails$character$origin(this, (i) => i);
}

abstract class CopyWith$Query$characterDetails$character$origin<TRes> {
  factory CopyWith$Query$characterDetails$character$origin(
    Query$characterDetails$character$origin instance,
    TRes Function(Query$characterDetails$character$origin) then,
  ) = _CopyWithImpl$Query$characterDetails$character$origin;

  factory CopyWith$Query$characterDetails$character$origin.stub(TRes res) =
      _CopyWithStubImpl$Query$characterDetails$character$origin;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$characterDetails$character$origin<TRes>
    implements CopyWith$Query$characterDetails$character$origin<TRes> {
  _CopyWithImpl$Query$characterDetails$character$origin(
    this._instance,
    this._then,
  );

  final Query$characterDetails$character$origin _instance;

  final TRes Function(Query$characterDetails$character$origin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$characterDetails$character$origin(
          name: name == _undefined ? _instance.name : (name as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$characterDetails$character$origin<TRes>
    implements CopyWith$Query$characterDetails$character$origin<TRes> {
  _CopyWithStubImpl$Query$characterDetails$character$origin(this._res);

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Query$characterDetails$character$episode {
  Query$characterDetails$character$episode({
    this.episode,
    this.$__typename = 'Episode',
  });

  factory Query$characterDetails$character$episode.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$characterDetails$character$episode(
      episode: (l$episode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$episode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$characterDetails$character$episode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Query$characterDetails$character$episode
    on Query$characterDetails$character$episode {
  CopyWith$Query$characterDetails$character$episode<
    Query$characterDetails$character$episode
  >
  get copyWith =>
      CopyWith$Query$characterDetails$character$episode(this, (i) => i);
}

abstract class CopyWith$Query$characterDetails$character$episode<TRes> {
  factory CopyWith$Query$characterDetails$character$episode(
    Query$characterDetails$character$episode instance,
    TRes Function(Query$characterDetails$character$episode) then,
  ) = _CopyWithImpl$Query$characterDetails$character$episode;

  factory CopyWith$Query$characterDetails$character$episode.stub(TRes res) =
      _CopyWithStubImpl$Query$characterDetails$character$episode;

  TRes call({String? episode, String? $__typename});
}

class _CopyWithImpl$Query$characterDetails$character$episode<TRes>
    implements CopyWith$Query$characterDetails$character$episode<TRes> {
  _CopyWithImpl$Query$characterDetails$character$episode(
    this._instance,
    this._then,
  );

  final Query$characterDetails$character$episode _instance;

  final TRes Function(Query$characterDetails$character$episode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? episode = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$characterDetails$character$episode(
          episode: episode == _undefined
              ? _instance.episode
              : (episode as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$characterDetails$character$episode<TRes>
    implements CopyWith$Query$characterDetails$character$episode<TRes> {
  _CopyWithStubImpl$Query$characterDetails$character$episode(this._res);

  TRes _res;

  call({String? episode, String? $__typename}) => _res;
}
