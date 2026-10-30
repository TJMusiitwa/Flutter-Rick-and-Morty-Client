import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$allEpisodes {
  factory Variables$Query$allEpisodes({int? page}) =>
      Variables$Query$allEpisodes._({if (page != null) r'page': page});

  Variables$Query$allEpisodes._(this._$data);

  factory Variables$Query$allEpisodes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$allEpisodes._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$allEpisodes<Variables$Query$allEpisodes>
  get copyWith => CopyWith$Variables$Query$allEpisodes(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$allEpisodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    return Object.hashAll([_$data.containsKey('page') ? l$page : const {}]);
  }
}

abstract class CopyWith$Variables$Query$allEpisodes<TRes> {
  factory CopyWith$Variables$Query$allEpisodes(
    Variables$Query$allEpisodes instance,
    TRes Function(Variables$Query$allEpisodes) then,
  ) = _CopyWithImpl$Variables$Query$allEpisodes;

  factory CopyWith$Variables$Query$allEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$allEpisodes;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$allEpisodes<TRes>
    implements CopyWith$Variables$Query$allEpisodes<TRes> {
  _CopyWithImpl$Variables$Query$allEpisodes(this._instance, this._then);

  final Variables$Query$allEpisodes _instance;

  final TRes Function(Variables$Query$allEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) => _then(
    Variables$Query$allEpisodes._({
      ..._instance._$data,
      if (page != _undefined) 'page': (page as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$allEpisodes<TRes>
    implements CopyWith$Variables$Query$allEpisodes<TRes> {
  _CopyWithStubImpl$Variables$Query$allEpisodes(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$allEpisodes {
  Query$allEpisodes({this.episodes, this.$__typename = 'Query'});

  factory Query$allEpisodes.fromJson(Map<String, dynamic> json) {
    final l$episodes = json['episodes'];
    final l$$__typename = json['__typename'];
    return Query$allEpisodes(
      episodes: l$episodes == null
          ? null
          : Query$allEpisodes$episodes.fromJson(
              (l$episodes as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$allEpisodes$episodes? episodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$episodes = episodes;
    final l$$__typename = $__typename;
    return Object.hashAll([l$episodes, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$allEpisodes || runtimeType != other.runtimeType) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
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

extension UtilityExtension$Query$allEpisodes on Query$allEpisodes {
  CopyWith$Query$allEpisodes<Query$allEpisodes> get copyWith =>
      CopyWith$Query$allEpisodes(this, (i) => i);
}

abstract class CopyWith$Query$allEpisodes<TRes> {
  factory CopyWith$Query$allEpisodes(
    Query$allEpisodes instance,
    TRes Function(Query$allEpisodes) then,
  ) = _CopyWithImpl$Query$allEpisodes;

  factory CopyWith$Query$allEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Query$allEpisodes;

  TRes call({Query$allEpisodes$episodes? episodes, String? $__typename});
  CopyWith$Query$allEpisodes$episodes<TRes> get episodes;
}

class _CopyWithImpl$Query$allEpisodes<TRes>
    implements CopyWith$Query$allEpisodes<TRes> {
  _CopyWithImpl$Query$allEpisodes(this._instance, this._then);

  final Query$allEpisodes _instance;

  final TRes Function(Query$allEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? episodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allEpisodes(
      episodes: episodes == _undefined
          ? _instance.episodes
          : (episodes as Query$allEpisodes$episodes?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$allEpisodes$episodes<TRes> get episodes {
    final local$episodes = _instance.episodes;
    return local$episodes == null
        ? CopyWith$Query$allEpisodes$episodes.stub(_then(_instance))
        : CopyWith$Query$allEpisodes$episodes(
            local$episodes,
            (e) => call(episodes: e),
          );
  }
}

class _CopyWithStubImpl$Query$allEpisodes<TRes>
    implements CopyWith$Query$allEpisodes<TRes> {
  _CopyWithStubImpl$Query$allEpisodes(this._res);

  TRes _res;

  call({Query$allEpisodes$episodes? episodes, String? $__typename}) => _res;

  CopyWith$Query$allEpisodes$episodes<TRes> get episodes =>
      CopyWith$Query$allEpisodes$episodes.stub(_res);
}

const documentNodeQueryallEpisodes = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'allEpisodes'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'page')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'episodes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'info'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'pages'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'next'),
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
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
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
                        name: NameNode(value: 'created'),
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
Query$allEpisodes _parserFn$Query$allEpisodes(Map<String, dynamic> data) =>
    Query$allEpisodes.fromJson(data);
typedef OnQueryComplete$Query$allEpisodes = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$allEpisodes?,
);

class Options$Query$allEpisodes
    extends graphql.QueryOptions<Query$allEpisodes> {
  Options$Query$allEpisodes({
    String? operationName,
    Variables$Query$allEpisodes? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$allEpisodes? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$allEpisodes? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables?.toJson() ?? {},
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
                 data == null ? null : _parserFn$Query$allEpisodes(data),
               ),
         onError: onError,
         document: documentNodeQueryallEpisodes,
         parserFn: _parserFn$Query$allEpisodes,
       );

  final OnQueryComplete$Query$allEpisodes? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$allEpisodes
    extends graphql.WatchQueryOptions<Query$allEpisodes> {
  WatchOptions$Query$allEpisodes({
    String? operationName,
    Variables$Query$allEpisodes? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$allEpisodes? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryallEpisodes,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$allEpisodes,
       );
}

class FetchMoreOptions$Query$allEpisodes extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$allEpisodes({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$allEpisodes? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryallEpisodes,
       );
}

extension ClientExtension$Query$allEpisodes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$allEpisodes>> query$allEpisodes([
    Options$Query$allEpisodes? options,
  ]) async => await this.query(options ?? Options$Query$allEpisodes());

  graphql.ObservableQuery<Query$allEpisodes> watchQuery$allEpisodes([
    WatchOptions$Query$allEpisodes? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$allEpisodes());

  void writeQuery$allEpisodes({
    required Query$allEpisodes data,
    Variables$Query$allEpisodes? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryallEpisodes),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$allEpisodes? readQuery$allEpisodes({
    Variables$Query$allEpisodes? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryallEpisodes),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$allEpisodes.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$allEpisodes> useQuery$allEpisodes([
  Options$Query$allEpisodes? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$allEpisodes());
graphql.ObservableQuery<Query$allEpisodes> useWatchQuery$allEpisodes([
  WatchOptions$Query$allEpisodes? options,
]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$allEpisodes());

class Query$allEpisodes$Widget
    extends graphql_flutter.Query<Query$allEpisodes> {
  Query$allEpisodes$Widget({
    widgets.Key? key,
    Options$Query$allEpisodes? options,
    required graphql_flutter.QueryBuilder<Query$allEpisodes> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$allEpisodes(),
         builder: builder,
       );
}

class Query$allEpisodes$episodes {
  Query$allEpisodes$episodes({
    this.info,
    this.results,
    this.$__typename = 'Episodes',
  });

  factory Query$allEpisodes$episodes.fromJson(Map<String, dynamic> json) {
    final l$info = json['info'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$allEpisodes$episodes(
      info: l$info == null
          ? null
          : Query$allEpisodes$episodes$info.fromJson(
              (l$info as Map<String, dynamic>),
            ),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$allEpisodes$episodes$results.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$allEpisodes$episodes$info? info;

  final List<Query$allEpisodes$episodes$results?>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$info = info;
    _resultData['info'] = l$info?.toJson();
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$info = info;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$info,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$allEpisodes$episodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$info = info;
    final lOther$info = other.info;
    if (l$info != lOther$info) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension$Query$allEpisodes$episodes
    on Query$allEpisodes$episodes {
  CopyWith$Query$allEpisodes$episodes<Query$allEpisodes$episodes>
  get copyWith => CopyWith$Query$allEpisodes$episodes(this, (i) => i);
}

abstract class CopyWith$Query$allEpisodes$episodes<TRes> {
  factory CopyWith$Query$allEpisodes$episodes(
    Query$allEpisodes$episodes instance,
    TRes Function(Query$allEpisodes$episodes) then,
  ) = _CopyWithImpl$Query$allEpisodes$episodes;

  factory CopyWith$Query$allEpisodes$episodes.stub(TRes res) =
      _CopyWithStubImpl$Query$allEpisodes$episodes;

  TRes call({
    Query$allEpisodes$episodes$info? info,
    List<Query$allEpisodes$episodes$results?>? results,
    String? $__typename,
  });
  CopyWith$Query$allEpisodes$episodes$info<TRes> get info;
  TRes results(
    Iterable<Query$allEpisodes$episodes$results?>? Function(
      Iterable<
        CopyWith$Query$allEpisodes$episodes$results<
          Query$allEpisodes$episodes$results
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$allEpisodes$episodes<TRes>
    implements CopyWith$Query$allEpisodes$episodes<TRes> {
  _CopyWithImpl$Query$allEpisodes$episodes(this._instance, this._then);

  final Query$allEpisodes$episodes _instance;

  final TRes Function(Query$allEpisodes$episodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? info = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allEpisodes$episodes(
      info: info == _undefined
          ? _instance.info
          : (info as Query$allEpisodes$episodes$info?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query$allEpisodes$episodes$results?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$allEpisodes$episodes$info<TRes> get info {
    final local$info = _instance.info;
    return local$info == null
        ? CopyWith$Query$allEpisodes$episodes$info.stub(_then(_instance))
        : CopyWith$Query$allEpisodes$episodes$info(
            local$info,
            (e) => call(info: e),
          );
  }

  TRes results(
    Iterable<Query$allEpisodes$episodes$results?>? Function(
      Iterable<
        CopyWith$Query$allEpisodes$episodes$results<
          Query$allEpisodes$episodes$results
        >?
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$allEpisodes$episodes$results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$allEpisodes$episodes<TRes>
    implements CopyWith$Query$allEpisodes$episodes<TRes> {
  _CopyWithStubImpl$Query$allEpisodes$episodes(this._res);

  TRes _res;

  call({
    Query$allEpisodes$episodes$info? info,
    List<Query$allEpisodes$episodes$results?>? results,
    String? $__typename,
  }) => _res;

  CopyWith$Query$allEpisodes$episodes$info<TRes> get info =>
      CopyWith$Query$allEpisodes$episodes$info.stub(_res);

  results(_fn) => _res;
}

class Query$allEpisodes$episodes$info {
  Query$allEpisodes$episodes$info({
    this.count,
    this.pages,
    this.next,
    this.$__typename = 'Info',
  });

  factory Query$allEpisodes$episodes$info.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$pages = json['pages'];
    final l$next = json['next'];
    final l$$__typename = json['__typename'];
    return Query$allEpisodes$episodes$info(
      count: (l$count as int?),
      pages: (l$pages as int?),
      next: (l$next as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final int? pages;

  final int? next;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$pages = pages;
    _resultData['pages'] = l$pages;
    final l$next = next;
    _resultData['next'] = l$next;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$pages = pages;
    final l$next = next;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$pages, l$next, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$allEpisodes$episodes$info ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$pages = pages;
    final lOther$pages = other.pages;
    if (l$pages != lOther$pages) {
      return false;
    }
    final l$next = next;
    final lOther$next = other.next;
    if (l$next != lOther$next) {
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

extension UtilityExtension$Query$allEpisodes$episodes$info
    on Query$allEpisodes$episodes$info {
  CopyWith$Query$allEpisodes$episodes$info<Query$allEpisodes$episodes$info>
  get copyWith => CopyWith$Query$allEpisodes$episodes$info(this, (i) => i);
}

abstract class CopyWith$Query$allEpisodes$episodes$info<TRes> {
  factory CopyWith$Query$allEpisodes$episodes$info(
    Query$allEpisodes$episodes$info instance,
    TRes Function(Query$allEpisodes$episodes$info) then,
  ) = _CopyWithImpl$Query$allEpisodes$episodes$info;

  factory CopyWith$Query$allEpisodes$episodes$info.stub(TRes res) =
      _CopyWithStubImpl$Query$allEpisodes$episodes$info;

  TRes call({int? count, int? pages, int? next, String? $__typename});
}

class _CopyWithImpl$Query$allEpisodes$episodes$info<TRes>
    implements CopyWith$Query$allEpisodes$episodes$info<TRes> {
  _CopyWithImpl$Query$allEpisodes$episodes$info(this._instance, this._then);

  final Query$allEpisodes$episodes$info _instance;

  final TRes Function(Query$allEpisodes$episodes$info) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? pages = _undefined,
    Object? next = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allEpisodes$episodes$info(
      count: count == _undefined ? _instance.count : (count as int?),
      pages: pages == _undefined ? _instance.pages : (pages as int?),
      next: next == _undefined ? _instance.next : (next as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$allEpisodes$episodes$info<TRes>
    implements CopyWith$Query$allEpisodes$episodes$info<TRes> {
  _CopyWithStubImpl$Query$allEpisodes$episodes$info(this._res);

  TRes _res;

  call({int? count, int? pages, int? next, String? $__typename}) => _res;
}

class Query$allEpisodes$episodes$results {
  Query$allEpisodes$episodes$results({
    this.id,
    this.name,
    this.air_date,
    this.episode,
    this.created,
    this.characters,
    this.$__typename = 'Episode',
  });

  factory Query$allEpisodes$episodes$results.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$air_date = json['air_date'];
    final l$episode = json['episode'];
    final l$created = json['created'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$allEpisodes$episodes$results(
      id: (l$id as String?),
      name: (l$name as String?),
      air_date: (l$air_date as String?),
      episode: (l$episode as String?),
      created: (l$created as String?),
      characters: (l$characters as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$allEpisodes$episodes$results$characters.fromJson(
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

  final String? created;

  final List<Query$allEpisodes$episodes$results$characters?>? characters;

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
    final l$created = created;
    _resultData['created'] = l$created;
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
    final l$created = created;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$air_date,
      l$episode,
      l$created,
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$allEpisodes$episodes$results ||
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
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$allEpisodes$episodes$results
    on Query$allEpisodes$episodes$results {
  CopyWith$Query$allEpisodes$episodes$results<
    Query$allEpisodes$episodes$results
  >
  get copyWith => CopyWith$Query$allEpisodes$episodes$results(this, (i) => i);
}

abstract class CopyWith$Query$allEpisodes$episodes$results<TRes> {
  factory CopyWith$Query$allEpisodes$episodes$results(
    Query$allEpisodes$episodes$results instance,
    TRes Function(Query$allEpisodes$episodes$results) then,
  ) = _CopyWithImpl$Query$allEpisodes$episodes$results;

  factory CopyWith$Query$allEpisodes$episodes$results.stub(TRes res) =
      _CopyWithStubImpl$Query$allEpisodes$episodes$results;

  TRes call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    String? created,
    List<Query$allEpisodes$episodes$results$characters?>? characters,
    String? $__typename,
  });
  TRes characters(
    Iterable<Query$allEpisodes$episodes$results$characters?>? Function(
      Iterable<
        CopyWith$Query$allEpisodes$episodes$results$characters<
          Query$allEpisodes$episodes$results$characters
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$allEpisodes$episodes$results<TRes>
    implements CopyWith$Query$allEpisodes$episodes$results<TRes> {
  _CopyWithImpl$Query$allEpisodes$episodes$results(this._instance, this._then);

  final Query$allEpisodes$episodes$results _instance;

  final TRes Function(Query$allEpisodes$episodes$results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? air_date = _undefined,
    Object? episode = _undefined,
    Object? created = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allEpisodes$episodes$results(
      id: id == _undefined ? _instance.id : (id as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      air_date: air_date == _undefined
          ? _instance.air_date
          : (air_date as String?),
      episode: episode == _undefined ? _instance.episode : (episode as String?),
      created: created == _undefined ? _instance.created : (created as String?),
      characters: characters == _undefined
          ? _instance.characters
          : (characters
                as List<Query$allEpisodes$episodes$results$characters?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes characters(
    Iterable<Query$allEpisodes$episodes$results$characters?>? Function(
      Iterable<
        CopyWith$Query$allEpisodes$episodes$results$characters<
          Query$allEpisodes$episodes$results$characters
        >?
      >?,
    )
    _fn,
  ) => call(
    characters: _fn(
      _instance.characters?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$allEpisodes$episodes$results$characters(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$allEpisodes$episodes$results<TRes>
    implements CopyWith$Query$allEpisodes$episodes$results<TRes> {
  _CopyWithStubImpl$Query$allEpisodes$episodes$results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    String? created,
    List<Query$allEpisodes$episodes$results$characters?>? characters,
    String? $__typename,
  }) => _res;

  characters(_fn) => _res;
}

class Query$allEpisodes$episodes$results$characters {
  Query$allEpisodes$episodes$results$characters({
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory Query$allEpisodes$episodes$results$characters.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$allEpisodes$episodes$results$characters(
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
    if (other is! Query$allEpisodes$episodes$results$characters ||
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

extension UtilityExtension$Query$allEpisodes$episodes$results$characters
    on Query$allEpisodes$episodes$results$characters {
  CopyWith$Query$allEpisodes$episodes$results$characters<
    Query$allEpisodes$episodes$results$characters
  >
  get copyWith =>
      CopyWith$Query$allEpisodes$episodes$results$characters(this, (i) => i);
}

abstract class CopyWith$Query$allEpisodes$episodes$results$characters<TRes> {
  factory CopyWith$Query$allEpisodes$episodes$results$characters(
    Query$allEpisodes$episodes$results$characters instance,
    TRes Function(Query$allEpisodes$episodes$results$characters) then,
  ) = _CopyWithImpl$Query$allEpisodes$episodes$results$characters;

  factory CopyWith$Query$allEpisodes$episodes$results$characters.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$allEpisodes$episodes$results$characters;

  TRes call({String? name, String? image, String? $__typename});
}

class _CopyWithImpl$Query$allEpisodes$episodes$results$characters<TRes>
    implements CopyWith$Query$allEpisodes$episodes$results$characters<TRes> {
  _CopyWithImpl$Query$allEpisodes$episodes$results$characters(
    this._instance,
    this._then,
  );

  final Query$allEpisodes$episodes$results$characters _instance;

  final TRes Function(Query$allEpisodes$episodes$results$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allEpisodes$episodes$results$characters(
      name: name == _undefined ? _instance.name : (name as String?),
      image: image == _undefined ? _instance.image : (image as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$allEpisodes$episodes$results$characters<TRes>
    implements CopyWith$Query$allEpisodes$episodes$results$characters<TRes> {
  _CopyWithStubImpl$Query$allEpisodes$episodes$results$characters(this._res);

  TRes _res;

  call({String? name, String? image, String? $__typename}) => _res;
}
