import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$episodeDetails {
  factory Variables$Query$episodeDetails({required String id}) =>
      Variables$Query$episodeDetails._({r'id': id});

  Variables$Query$episodeDetails._(this._$data);

  factory Variables$Query$episodeDetails.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$episodeDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$episodeDetails<Variables$Query$episodeDetails>
  get copyWith => CopyWith$Variables$Query$episodeDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$episodeDetails ||
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

abstract class CopyWith$Variables$Query$episodeDetails<TRes> {
  factory CopyWith$Variables$Query$episodeDetails(
    Variables$Query$episodeDetails instance,
    TRes Function(Variables$Query$episodeDetails) then,
  ) = _CopyWithImpl$Variables$Query$episodeDetails;

  factory CopyWith$Variables$Query$episodeDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$episodeDetails;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$episodeDetails<TRes>
    implements CopyWith$Variables$Query$episodeDetails<TRes> {
  _CopyWithImpl$Variables$Query$episodeDetails(this._instance, this._then);

  final Variables$Query$episodeDetails _instance;

  final TRes Function(Variables$Query$episodeDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$episodeDetails._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$episodeDetails<TRes>
    implements CopyWith$Variables$Query$episodeDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$episodeDetails(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$episodeDetails {
  Query$episodeDetails({this.episode, this.$__typename = 'Query'});

  factory Query$episodeDetails.fromJson(Map<String, dynamic> json) {
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$episodeDetails(
      episode: l$episode == null
          ? null
          : Query$episodeDetails$episode.fromJson(
              (l$episode as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$episodeDetails$episode? episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episode = episode;
    _resultData['episode'] = l$episode?.toJson();
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
    if (other is! Query$episodeDetails || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$episodeDetails on Query$episodeDetails {
  CopyWith$Query$episodeDetails<Query$episodeDetails> get copyWith =>
      CopyWith$Query$episodeDetails(this, (i) => i);
}

abstract class CopyWith$Query$episodeDetails<TRes> {
  factory CopyWith$Query$episodeDetails(
    Query$episodeDetails instance,
    TRes Function(Query$episodeDetails) then,
  ) = _CopyWithImpl$Query$episodeDetails;

  factory CopyWith$Query$episodeDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$episodeDetails;

  TRes call({Query$episodeDetails$episode? episode, String? $__typename});
  CopyWith$Query$episodeDetails$episode<TRes> get episode;
}

class _CopyWithImpl$Query$episodeDetails<TRes>
    implements CopyWith$Query$episodeDetails<TRes> {
  _CopyWithImpl$Query$episodeDetails(this._instance, this._then);

  final Query$episodeDetails _instance;

  final TRes Function(Query$episodeDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? episode = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$episodeDetails(
          episode: episode == _undefined
              ? _instance.episode
              : (episode as Query$episodeDetails$episode?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$episodeDetails$episode<TRes> get episode {
    final local$episode = _instance.episode;
    return local$episode == null
        ? CopyWith$Query$episodeDetails$episode.stub(_then(_instance))
        : CopyWith$Query$episodeDetails$episode(
            local$episode,
            (e) => call(episode: e),
          );
  }
}

class _CopyWithStubImpl$Query$episodeDetails<TRes>
    implements CopyWith$Query$episodeDetails<TRes> {
  _CopyWithStubImpl$Query$episodeDetails(this._res);

  TRes _res;

  call({Query$episodeDetails$episode? episode, String? $__typename}) => _res;

  CopyWith$Query$episodeDetails$episode<TRes> get episode =>
      CopyWith$Query$episodeDetails$episode.stub(_res);
}

const documentNodeQueryepisodeDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'episodeDetails'),
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
            name: NameNode(value: 'episode'),
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'air_date'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'episode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'characters'),
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
Query$episodeDetails _parserFn$Query$episodeDetails(
  Map<String, dynamic> data,
) => Query$episodeDetails.fromJson(data);
typedef OnQueryComplete$Query$episodeDetails = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$episodeDetails?,
);

class Options$Query$episodeDetails
    extends graphql.QueryOptions<Query$episodeDetails> {
  Options$Query$episodeDetails({
    String? operationName,
    required Variables$Query$episodeDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$episodeDetails? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$episodeDetails? onComplete,
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
                 data == null ? null : _parserFn$Query$episodeDetails(data),
               ),
         onError: onError,
         document: documentNodeQueryepisodeDetails,
         parserFn: _parserFn$Query$episodeDetails,
       );

  final OnQueryComplete$Query$episodeDetails? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$episodeDetails
    extends graphql.WatchQueryOptions<Query$episodeDetails> {
  WatchOptions$Query$episodeDetails({
    String? operationName,
    required Variables$Query$episodeDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$episodeDetails? typedOptimisticResult,
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
         document: documentNodeQueryepisodeDetails,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$episodeDetails,
       );
}

class FetchMoreOptions$Query$episodeDetails extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$episodeDetails({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$episodeDetails variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryepisodeDetails,
       );
}

extension ClientExtension$Query$episodeDetails on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$episodeDetails>> query$episodeDetails(
    Options$Query$episodeDetails options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$episodeDetails> watchQuery$episodeDetails(
    WatchOptions$Query$episodeDetails options,
  ) => this.watchQuery(options);

  void writeQuery$episodeDetails({
    required Query$episodeDetails data,
    required Variables$Query$episodeDetails variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryepisodeDetails),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$episodeDetails? readQuery$episodeDetails({
    required Variables$Query$episodeDetails variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryepisodeDetails),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$episodeDetails.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$episodeDetails> useQuery$episodeDetails(
  Options$Query$episodeDetails options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$episodeDetails> useWatchQuery$episodeDetails(
  WatchOptions$Query$episodeDetails options,
) => graphql_flutter.useWatchQuery(options);

class Query$episodeDetails$Widget
    extends graphql_flutter.Query<Query$episodeDetails> {
  Query$episodeDetails$Widget({
    widgets.Key? key,
    required Options$Query$episodeDetails options,
    required graphql_flutter.QueryBuilder<Query$episodeDetails> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$episodeDetails$episode {
  Query$episodeDetails$episode({
    this.id,
    this.name,
    this.air_date,
    this.episode,
    this.characters,
    this.$__typename = 'Episode',
  });

  factory Query$episodeDetails$episode.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$air_date = json['air_date'];
    final l$episode = json['episode'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$episodeDetails$episode(
      id: (l$id as String?),
      name: (l$name as String?),
      air_date: (l$air_date as String?),
      episode: (l$episode as String?),
      characters: (l$characters as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$episodeDetails$episode$characters.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? air_date;

  final String? episode;

  final List<Query$episodeDetails$episode$characters?>? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$air_date = air_date;
    _resultData['air_date'] = l$air_date;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$characters = characters;
    _resultData['characters'] = l$characters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$air_date = air_date;
    final l$episode = episode;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$air_date,
      l$episode,
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$episodeDetails$episode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$air_date = air_date;
    final lOther$air_date = other.air_date;
    if (l$air_date != lOther$air_date) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != null && lOther$characters != null) {
      if (l$characters.length != lOther$characters.length) {
        return false;
      }
      for (int i = 0; i < l$characters.length; i++) {
        final l$characters$entry = l$characters[i];
        final lOther$characters$entry = lOther$characters[i];
        if (l$characters$entry != lOther$characters$entry) {
          return false;
        }
      }
    } else if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$episodeDetails$episode
    on Query$episodeDetails$episode {
  CopyWith$Query$episodeDetails$episode<Query$episodeDetails$episode>
  get copyWith => CopyWith$Query$episodeDetails$episode(this, (i) => i);
}

abstract class CopyWith$Query$episodeDetails$episode<TRes> {
  factory CopyWith$Query$episodeDetails$episode(
    Query$episodeDetails$episode instance,
    TRes Function(Query$episodeDetails$episode) then,
  ) = _CopyWithImpl$Query$episodeDetails$episode;

  factory CopyWith$Query$episodeDetails$episode.stub(TRes res) =
      _CopyWithStubImpl$Query$episodeDetails$episode;

  TRes call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    List<Query$episodeDetails$episode$characters?>? characters,
    String? $__typename,
  });
  TRes characters(
    Iterable<Query$episodeDetails$episode$characters?>? Function(
      Iterable<
        CopyWith$Query$episodeDetails$episode$characters<
          Query$episodeDetails$episode$characters
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$episodeDetails$episode<TRes>
    implements CopyWith$Query$episodeDetails$episode<TRes> {
  _CopyWithImpl$Query$episodeDetails$episode(this._instance, this._then);

  final Query$episodeDetails$episode _instance;

  final TRes Function(Query$episodeDetails$episode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? air_date = _undefined,
    Object? episode = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$episodeDetails$episode(
      id: id == _undefined ? _instance.id : (id as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      air_date: air_date == _undefined
          ? _instance.air_date
          : (air_date as String?),
      episode: episode == _undefined ? _instance.episode : (episode as String?),
      characters: characters == _undefined
          ? _instance.characters
          : (characters as List<Query$episodeDetails$episode$characters?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes characters(
    Iterable<Query$episodeDetails$episode$characters?>? Function(
      Iterable<
        CopyWith$Query$episodeDetails$episode$characters<
          Query$episodeDetails$episode$characters
        >?
      >?,
    )
    _fn,
  ) => call(
    characters: _fn(
      _instance.characters?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$episodeDetails$episode$characters(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$episodeDetails$episode<TRes>
    implements CopyWith$Query$episodeDetails$episode<TRes> {
  _CopyWithStubImpl$Query$episodeDetails$episode(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    List<Query$episodeDetails$episode$characters?>? characters,
    String? $__typename,
  }) => _res;

  characters(_fn) => _res;
}

class Query$episodeDetails$episode$characters {
  Query$episodeDetails$episode$characters({
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory Query$episodeDetails$episode$characters.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$episodeDetails$episode$characters(
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
    if (other is! Query$episodeDetails$episode$characters ||
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

extension UtilityExtension$Query$episodeDetails$episode$characters
    on Query$episodeDetails$episode$characters {
  CopyWith$Query$episodeDetails$episode$characters<
    Query$episodeDetails$episode$characters
  >
  get copyWith =>
      CopyWith$Query$episodeDetails$episode$characters(this, (i) => i);
}

abstract class CopyWith$Query$episodeDetails$episode$characters<TRes> {
  factory CopyWith$Query$episodeDetails$episode$characters(
    Query$episodeDetails$episode$characters instance,
    TRes Function(Query$episodeDetails$episode$characters) then,
  ) = _CopyWithImpl$Query$episodeDetails$episode$characters;

  factory CopyWith$Query$episodeDetails$episode$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$episodeDetails$episode$characters;

  TRes call({String? name, String? image, String? $__typename});
}

class _CopyWithImpl$Query$episodeDetails$episode$characters<TRes>
    implements CopyWith$Query$episodeDetails$episode$characters<TRes> {
  _CopyWithImpl$Query$episodeDetails$episode$characters(
    this._instance,
    this._then,
  );

  final Query$episodeDetails$episode$characters _instance;

  final TRes Function(Query$episodeDetails$episode$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$episodeDetails$episode$characters(
      name: name == _undefined ? _instance.name : (name as String?),
      image: image == _undefined ? _instance.image : (image as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$episodeDetails$episode$characters<TRes>
    implements CopyWith$Query$episodeDetails$episode$characters<TRes> {
  _CopyWithStubImpl$Query$episodeDetails$episode$characters(this._res);

  TRes _res;

  call({String? name, String? image, String? $__typename}) => _res;
}
