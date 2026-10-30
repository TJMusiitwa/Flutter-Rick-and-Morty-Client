import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$allCharacters {
  factory Variables$Query$allCharacters({int? page}) =>
      Variables$Query$allCharacters._({if (page != null) r'page': page});

  Variables$Query$allCharacters._(this._$data);

  factory Variables$Query$allCharacters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$allCharacters._(result$data);
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

  CopyWith$Variables$Query$allCharacters<Variables$Query$allCharacters>
  get copyWith => CopyWith$Variables$Query$allCharacters(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$allCharacters ||
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

abstract class CopyWith$Variables$Query$allCharacters<TRes> {
  factory CopyWith$Variables$Query$allCharacters(
    Variables$Query$allCharacters instance,
    TRes Function(Variables$Query$allCharacters) then,
  ) = _CopyWithImpl$Variables$Query$allCharacters;

  factory CopyWith$Variables$Query$allCharacters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$allCharacters;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$allCharacters<TRes>
    implements CopyWith$Variables$Query$allCharacters<TRes> {
  _CopyWithImpl$Variables$Query$allCharacters(this._instance, this._then);

  final Variables$Query$allCharacters _instance;

  final TRes Function(Variables$Query$allCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) => _then(
    Variables$Query$allCharacters._({
      ..._instance._$data,
      if (page != _undefined) 'page': (page as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$allCharacters<TRes>
    implements CopyWith$Variables$Query$allCharacters<TRes> {
  _CopyWithStubImpl$Variables$Query$allCharacters(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$allCharacters {
  Query$allCharacters({this.characters, this.$__typename = 'Query'});

  factory Query$allCharacters.fromJson(Map<String, dynamic> json) {
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$allCharacters(
      characters: l$characters == null
          ? null
          : Query$allCharacters$characters.fromJson(
              (l$characters as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$allCharacters$characters? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([l$characters, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$allCharacters || runtimeType != other.runtimeType) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$allCharacters on Query$allCharacters {
  CopyWith$Query$allCharacters<Query$allCharacters> get copyWith =>
      CopyWith$Query$allCharacters(this, (i) => i);
}

abstract class CopyWith$Query$allCharacters<TRes> {
  factory CopyWith$Query$allCharacters(
    Query$allCharacters instance,
    TRes Function(Query$allCharacters) then,
  ) = _CopyWithImpl$Query$allCharacters;

  factory CopyWith$Query$allCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$allCharacters;

  TRes call({Query$allCharacters$characters? characters, String? $__typename});
  CopyWith$Query$allCharacters$characters<TRes> get characters;
}

class _CopyWithImpl$Query$allCharacters<TRes>
    implements CopyWith$Query$allCharacters<TRes> {
  _CopyWithImpl$Query$allCharacters(this._instance, this._then);

  final Query$allCharacters _instance;

  final TRes Function(Query$allCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allCharacters(
      characters: characters == _undefined
          ? _instance.characters
          : (characters as Query$allCharacters$characters?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$allCharacters$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$allCharacters$characters.stub(_then(_instance))
        : CopyWith$Query$allCharacters$characters(
            local$characters,
            (e) => call(characters: e),
          );
  }
}

class _CopyWithStubImpl$Query$allCharacters<TRes>
    implements CopyWith$Query$allCharacters<TRes> {
  _CopyWithStubImpl$Query$allCharacters(this._res);

  TRes _res;

  call({Query$allCharacters$characters? characters, String? $__typename}) =>
      _res;

  CopyWith$Query$allCharacters$characters<TRes> get characters =>
      CopyWith$Query$allCharacters$characters.stub(_res);
}

const documentNodeQueryallCharacters = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'allCharacters'),
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
            name: NameNode(value: 'characters'),
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
                        name: NameNode(value: 'species'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'gender'),
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
                        name: NameNode(value: 'created'),
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
Query$allCharacters _parserFn$Query$allCharacters(Map<String, dynamic> data) =>
    Query$allCharacters.fromJson(data);
typedef OnQueryComplete$Query$allCharacters = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$allCharacters?,
);

class Options$Query$allCharacters
    extends graphql.QueryOptions<Query$allCharacters> {
  Options$Query$allCharacters({
    String? operationName,
    Variables$Query$allCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$allCharacters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$allCharacters? onComplete,
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
                 data == null ? null : _parserFn$Query$allCharacters(data),
               ),
         onError: onError,
         document: documentNodeQueryallCharacters,
         parserFn: _parserFn$Query$allCharacters,
       );

  final OnQueryComplete$Query$allCharacters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$allCharacters
    extends graphql.WatchQueryOptions<Query$allCharacters> {
  WatchOptions$Query$allCharacters({
    String? operationName,
    Variables$Query$allCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$allCharacters? typedOptimisticResult,
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
         document: documentNodeQueryallCharacters,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$allCharacters,
       );
}

class FetchMoreOptions$Query$allCharacters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$allCharacters({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$allCharacters? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryallCharacters,
       );
}

extension ClientExtension$Query$allCharacters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$allCharacters>> query$allCharacters([
    Options$Query$allCharacters? options,
  ]) async => await this.query(options ?? Options$Query$allCharacters());

  graphql.ObservableQuery<Query$allCharacters> watchQuery$allCharacters([
    WatchOptions$Query$allCharacters? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$allCharacters());

  void writeQuery$allCharacters({
    required Query$allCharacters data,
    Variables$Query$allCharacters? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryallCharacters),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$allCharacters? readQuery$allCharacters({
    Variables$Query$allCharacters? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryallCharacters),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$allCharacters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$allCharacters> useQuery$allCharacters([
  Options$Query$allCharacters? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$allCharacters());
graphql.ObservableQuery<Query$allCharacters> useWatchQuery$allCharacters([
  WatchOptions$Query$allCharacters? options,
]) => graphql_flutter.useWatchQuery(
  options ?? WatchOptions$Query$allCharacters(),
);

class Query$allCharacters$Widget
    extends graphql_flutter.Query<Query$allCharacters> {
  Query$allCharacters$Widget({
    widgets.Key? key,
    Options$Query$allCharacters? options,
    required graphql_flutter.QueryBuilder<Query$allCharacters> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$allCharacters(),
         builder: builder,
       );
}

class Query$allCharacters$characters {
  Query$allCharacters$characters({
    this.info,
    this.results,
    this.$__typename = 'Characters',
  });

  factory Query$allCharacters$characters.fromJson(Map<String, dynamic> json) {
    final l$info = json['info'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$allCharacters$characters(
      info: l$info == null
          ? null
          : Query$allCharacters$characters$info.fromJson(
              (l$info as Map<String, dynamic>),
            ),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$allCharacters$characters$results.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$allCharacters$characters$info? info;

  final List<Query$allCharacters$characters$results?>? results;

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
    if (other is! Query$allCharacters$characters ||
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

extension UtilityExtension$Query$allCharacters$characters
    on Query$allCharacters$characters {
  CopyWith$Query$allCharacters$characters<Query$allCharacters$characters>
  get copyWith => CopyWith$Query$allCharacters$characters(this, (i) => i);
}

abstract class CopyWith$Query$allCharacters$characters<TRes> {
  factory CopyWith$Query$allCharacters$characters(
    Query$allCharacters$characters instance,
    TRes Function(Query$allCharacters$characters) then,
  ) = _CopyWithImpl$Query$allCharacters$characters;

  factory CopyWith$Query$allCharacters$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$allCharacters$characters;

  TRes call({
    Query$allCharacters$characters$info? info,
    List<Query$allCharacters$characters$results?>? results,
    String? $__typename,
  });
  CopyWith$Query$allCharacters$characters$info<TRes> get info;
  TRes results(
    Iterable<Query$allCharacters$characters$results?>? Function(
      Iterable<
        CopyWith$Query$allCharacters$characters$results<
          Query$allCharacters$characters$results
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$allCharacters$characters<TRes>
    implements CopyWith$Query$allCharacters$characters<TRes> {
  _CopyWithImpl$Query$allCharacters$characters(this._instance, this._then);

  final Query$allCharacters$characters _instance;

  final TRes Function(Query$allCharacters$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? info = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allCharacters$characters(
      info: info == _undefined
          ? _instance.info
          : (info as Query$allCharacters$characters$info?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query$allCharacters$characters$results?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$allCharacters$characters$info<TRes> get info {
    final local$info = _instance.info;
    return local$info == null
        ? CopyWith$Query$allCharacters$characters$info.stub(_then(_instance))
        : CopyWith$Query$allCharacters$characters$info(
            local$info,
            (e) => call(info: e),
          );
  }

  TRes results(
    Iterable<Query$allCharacters$characters$results?>? Function(
      Iterable<
        CopyWith$Query$allCharacters$characters$results<
          Query$allCharacters$characters$results
        >?
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$allCharacters$characters$results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$allCharacters$characters<TRes>
    implements CopyWith$Query$allCharacters$characters<TRes> {
  _CopyWithStubImpl$Query$allCharacters$characters(this._res);

  TRes _res;

  call({
    Query$allCharacters$characters$info? info,
    List<Query$allCharacters$characters$results?>? results,
    String? $__typename,
  }) => _res;

  CopyWith$Query$allCharacters$characters$info<TRes> get info =>
      CopyWith$Query$allCharacters$characters$info.stub(_res);

  results(_fn) => _res;
}

class Query$allCharacters$characters$info {
  Query$allCharacters$characters$info({
    this.count,
    this.pages,
    this.next,
    this.$__typename = 'Info',
  });

  factory Query$allCharacters$characters$info.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$pages = json['pages'];
    final l$next = json['next'];
    final l$$__typename = json['__typename'];
    return Query$allCharacters$characters$info(
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
    if (other is! Query$allCharacters$characters$info ||
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

extension UtilityExtension$Query$allCharacters$characters$info
    on Query$allCharacters$characters$info {
  CopyWith$Query$allCharacters$characters$info<
    Query$allCharacters$characters$info
  >
  get copyWith => CopyWith$Query$allCharacters$characters$info(this, (i) => i);
}

abstract class CopyWith$Query$allCharacters$characters$info<TRes> {
  factory CopyWith$Query$allCharacters$characters$info(
    Query$allCharacters$characters$info instance,
    TRes Function(Query$allCharacters$characters$info) then,
  ) = _CopyWithImpl$Query$allCharacters$characters$info;

  factory CopyWith$Query$allCharacters$characters$info.stub(TRes res) =
      _CopyWithStubImpl$Query$allCharacters$characters$info;

  TRes call({int? count, int? pages, int? next, String? $__typename});
}

class _CopyWithImpl$Query$allCharacters$characters$info<TRes>
    implements CopyWith$Query$allCharacters$characters$info<TRes> {
  _CopyWithImpl$Query$allCharacters$characters$info(this._instance, this._then);

  final Query$allCharacters$characters$info _instance;

  final TRes Function(Query$allCharacters$characters$info) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? pages = _undefined,
    Object? next = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allCharacters$characters$info(
      count: count == _undefined ? _instance.count : (count as int?),
      pages: pages == _undefined ? _instance.pages : (pages as int?),
      next: next == _undefined ? _instance.next : (next as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$allCharacters$characters$info<TRes>
    implements CopyWith$Query$allCharacters$characters$info<TRes> {
  _CopyWithStubImpl$Query$allCharacters$characters$info(this._res);

  TRes _res;

  call({int? count, int? pages, int? next, String? $__typename}) => _res;
}

class Query$allCharacters$characters$results {
  Query$allCharacters$characters$results({
    this.id,
    this.name,
    this.species,
    this.gender,
    this.image,
    this.created,
    this.$__typename = 'Character',
  });

  factory Query$allCharacters$characters$results.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$species = json['species'];
    final l$gender = json['gender'];
    final l$image = json['image'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$allCharacters$characters$results(
      id: (l$id as String?),
      name: (l$name as String?),
      species: (l$species as String?),
      gender: (l$gender as String?),
      image: (l$image as String?),
      created: (l$created as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? species;

  final String? gender;

  final String? image;

  final String? created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$species = species;
    _resultData['species'] = l$species;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$created = created;
    _resultData['created'] = l$created;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$species = species;
    final l$gender = gender;
    final l$image = image;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$species,
      l$gender,
      l$image,
      l$created,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$allCharacters$characters$results ||
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
    final l$species = species;
    final lOther$species = other.species;
    if (l$species != lOther$species) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$allCharacters$characters$results
    on Query$allCharacters$characters$results {
  CopyWith$Query$allCharacters$characters$results<
    Query$allCharacters$characters$results
  >
  get copyWith =>
      CopyWith$Query$allCharacters$characters$results(this, (i) => i);
}

abstract class CopyWith$Query$allCharacters$characters$results<TRes> {
  factory CopyWith$Query$allCharacters$characters$results(
    Query$allCharacters$characters$results instance,
    TRes Function(Query$allCharacters$characters$results) then,
  ) = _CopyWithImpl$Query$allCharacters$characters$results;

  factory CopyWith$Query$allCharacters$characters$results.stub(TRes res) =
      _CopyWithStubImpl$Query$allCharacters$characters$results;

  TRes call({
    String? id,
    String? name,
    String? species,
    String? gender,
    String? image,
    String? created,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$allCharacters$characters$results<TRes>
    implements CopyWith$Query$allCharacters$characters$results<TRes> {
  _CopyWithImpl$Query$allCharacters$characters$results(
    this._instance,
    this._then,
  );

  final Query$allCharacters$characters$results _instance;

  final TRes Function(Query$allCharacters$characters$results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? species = _undefined,
    Object? gender = _undefined,
    Object? image = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allCharacters$characters$results(
      id: id == _undefined ? _instance.id : (id as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      species: species == _undefined ? _instance.species : (species as String?),
      gender: gender == _undefined ? _instance.gender : (gender as String?),
      image: image == _undefined ? _instance.image : (image as String?),
      created: created == _undefined ? _instance.created : (created as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$allCharacters$characters$results<TRes>
    implements CopyWith$Query$allCharacters$characters$results<TRes> {
  _CopyWithStubImpl$Query$allCharacters$characters$results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? species,
    String? gender,
    String? image,
    String? created,
    String? $__typename,
  }) => _res;
}
