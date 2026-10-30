import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$allLocations {
  factory Variables$Query$allLocations({int? page}) =>
      Variables$Query$allLocations._({if (page != null) r'page': page});

  Variables$Query$allLocations._(this._$data);

  factory Variables$Query$allLocations.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$allLocations._(result$data);
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

  CopyWith$Variables$Query$allLocations<Variables$Query$allLocations>
  get copyWith => CopyWith$Variables$Query$allLocations(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$allLocations ||
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

abstract class CopyWith$Variables$Query$allLocations<TRes> {
  factory CopyWith$Variables$Query$allLocations(
    Variables$Query$allLocations instance,
    TRes Function(Variables$Query$allLocations) then,
  ) = _CopyWithImpl$Variables$Query$allLocations;

  factory CopyWith$Variables$Query$allLocations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$allLocations;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$allLocations<TRes>
    implements CopyWith$Variables$Query$allLocations<TRes> {
  _CopyWithImpl$Variables$Query$allLocations(this._instance, this._then);

  final Variables$Query$allLocations _instance;

  final TRes Function(Variables$Query$allLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) => _then(
    Variables$Query$allLocations._({
      ..._instance._$data,
      if (page != _undefined) 'page': (page as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$allLocations<TRes>
    implements CopyWith$Variables$Query$allLocations<TRes> {
  _CopyWithStubImpl$Variables$Query$allLocations(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$allLocations {
  Query$allLocations({this.locations, this.$__typename = 'Query'});

  factory Query$allLocations.fromJson(Map<String, dynamic> json) {
    final l$locations = json['locations'];
    final l$$__typename = json['__typename'];
    return Query$allLocations(
      locations: l$locations == null
          ? null
          : Query$allLocations$locations.fromJson(
              (l$locations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$allLocations$locations? locations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$locations = locations;
    _resultData['locations'] = l$locations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$locations = locations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$locations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$allLocations || runtimeType != other.runtimeType) {
      return false;
    }
    final l$locations = locations;
    final lOther$locations = other.locations;
    if (l$locations != lOther$locations) {
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

extension UtilityExtension$Query$allLocations on Query$allLocations {
  CopyWith$Query$allLocations<Query$allLocations> get copyWith =>
      CopyWith$Query$allLocations(this, (i) => i);
}

abstract class CopyWith$Query$allLocations<TRes> {
  factory CopyWith$Query$allLocations(
    Query$allLocations instance,
    TRes Function(Query$allLocations) then,
  ) = _CopyWithImpl$Query$allLocations;

  factory CopyWith$Query$allLocations.stub(TRes res) =
      _CopyWithStubImpl$Query$allLocations;

  TRes call({Query$allLocations$locations? locations, String? $__typename});
  CopyWith$Query$allLocations$locations<TRes> get locations;
}

class _CopyWithImpl$Query$allLocations<TRes>
    implements CopyWith$Query$allLocations<TRes> {
  _CopyWithImpl$Query$allLocations(this._instance, this._then);

  final Query$allLocations _instance;

  final TRes Function(Query$allLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? locations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allLocations(
      locations: locations == _undefined
          ? _instance.locations
          : (locations as Query$allLocations$locations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$allLocations$locations<TRes> get locations {
    final local$locations = _instance.locations;
    return local$locations == null
        ? CopyWith$Query$allLocations$locations.stub(_then(_instance))
        : CopyWith$Query$allLocations$locations(
            local$locations,
            (e) => call(locations: e),
          );
  }
}

class _CopyWithStubImpl$Query$allLocations<TRes>
    implements CopyWith$Query$allLocations<TRes> {
  _CopyWithStubImpl$Query$allLocations(this._res);

  TRes _res;

  call({Query$allLocations$locations? locations, String? $__typename}) => _res;

  CopyWith$Query$allLocations$locations<TRes> get locations =>
      CopyWith$Query$allLocations$locations.stub(_res);
}

const documentNodeQueryallLocations = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'allLocations'),
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
            name: NameNode(value: 'locations'),
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
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'dimension'),
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
Query$allLocations _parserFn$Query$allLocations(Map<String, dynamic> data) =>
    Query$allLocations.fromJson(data);
typedef OnQueryComplete$Query$allLocations = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$allLocations?,
);

class Options$Query$allLocations
    extends graphql.QueryOptions<Query$allLocations> {
  Options$Query$allLocations({
    String? operationName,
    Variables$Query$allLocations? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$allLocations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$allLocations? onComplete,
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
                 data == null ? null : _parserFn$Query$allLocations(data),
               ),
         onError: onError,
         document: documentNodeQueryallLocations,
         parserFn: _parserFn$Query$allLocations,
       );

  final OnQueryComplete$Query$allLocations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$allLocations
    extends graphql.WatchQueryOptions<Query$allLocations> {
  WatchOptions$Query$allLocations({
    String? operationName,
    Variables$Query$allLocations? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$allLocations? typedOptimisticResult,
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
         document: documentNodeQueryallLocations,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$allLocations,
       );
}

class FetchMoreOptions$Query$allLocations extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$allLocations({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$allLocations? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryallLocations,
       );
}

extension ClientExtension$Query$allLocations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$allLocations>> query$allLocations([
    Options$Query$allLocations? options,
  ]) async => await this.query(options ?? Options$Query$allLocations());

  graphql.ObservableQuery<Query$allLocations> watchQuery$allLocations([
    WatchOptions$Query$allLocations? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$allLocations());

  void writeQuery$allLocations({
    required Query$allLocations data,
    Variables$Query$allLocations? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryallLocations),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$allLocations? readQuery$allLocations({
    Variables$Query$allLocations? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryallLocations),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$allLocations.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$allLocations> useQuery$allLocations([
  Options$Query$allLocations? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$allLocations());
graphql.ObservableQuery<Query$allLocations> useWatchQuery$allLocations([
  WatchOptions$Query$allLocations? options,
]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$allLocations());

class Query$allLocations$Widget
    extends graphql_flutter.Query<Query$allLocations> {
  Query$allLocations$Widget({
    widgets.Key? key,
    Options$Query$allLocations? options,
    required graphql_flutter.QueryBuilder<Query$allLocations> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$allLocations(),
         builder: builder,
       );
}

class Query$allLocations$locations {
  Query$allLocations$locations({
    this.info,
    this.results,
    this.$__typename = 'Locations',
  });

  factory Query$allLocations$locations.fromJson(Map<String, dynamic> json) {
    final l$info = json['info'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$allLocations$locations(
      info: l$info == null
          ? null
          : Query$allLocations$locations$info.fromJson(
              (l$info as Map<String, dynamic>),
            ),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$allLocations$locations$results.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$allLocations$locations$info? info;

  final List<Query$allLocations$locations$results?>? results;

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
    if (other is! Query$allLocations$locations ||
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

extension UtilityExtension$Query$allLocations$locations
    on Query$allLocations$locations {
  CopyWith$Query$allLocations$locations<Query$allLocations$locations>
  get copyWith => CopyWith$Query$allLocations$locations(this, (i) => i);
}

abstract class CopyWith$Query$allLocations$locations<TRes> {
  factory CopyWith$Query$allLocations$locations(
    Query$allLocations$locations instance,
    TRes Function(Query$allLocations$locations) then,
  ) = _CopyWithImpl$Query$allLocations$locations;

  factory CopyWith$Query$allLocations$locations.stub(TRes res) =
      _CopyWithStubImpl$Query$allLocations$locations;

  TRes call({
    Query$allLocations$locations$info? info,
    List<Query$allLocations$locations$results?>? results,
    String? $__typename,
  });
  CopyWith$Query$allLocations$locations$info<TRes> get info;
  TRes results(
    Iterable<Query$allLocations$locations$results?>? Function(
      Iterable<
        CopyWith$Query$allLocations$locations$results<
          Query$allLocations$locations$results
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$allLocations$locations<TRes>
    implements CopyWith$Query$allLocations$locations<TRes> {
  _CopyWithImpl$Query$allLocations$locations(this._instance, this._then);

  final Query$allLocations$locations _instance;

  final TRes Function(Query$allLocations$locations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? info = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allLocations$locations(
      info: info == _undefined
          ? _instance.info
          : (info as Query$allLocations$locations$info?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query$allLocations$locations$results?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$allLocations$locations$info<TRes> get info {
    final local$info = _instance.info;
    return local$info == null
        ? CopyWith$Query$allLocations$locations$info.stub(_then(_instance))
        : CopyWith$Query$allLocations$locations$info(
            local$info,
            (e) => call(info: e),
          );
  }

  TRes results(
    Iterable<Query$allLocations$locations$results?>? Function(
      Iterable<
        CopyWith$Query$allLocations$locations$results<
          Query$allLocations$locations$results
        >?
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$allLocations$locations$results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$allLocations$locations<TRes>
    implements CopyWith$Query$allLocations$locations<TRes> {
  _CopyWithStubImpl$Query$allLocations$locations(this._res);

  TRes _res;

  call({
    Query$allLocations$locations$info? info,
    List<Query$allLocations$locations$results?>? results,
    String? $__typename,
  }) => _res;

  CopyWith$Query$allLocations$locations$info<TRes> get info =>
      CopyWith$Query$allLocations$locations$info.stub(_res);

  results(_fn) => _res;
}

class Query$allLocations$locations$info {
  Query$allLocations$locations$info({
    this.count,
    this.pages,
    this.next,
    this.$__typename = 'Info',
  });

  factory Query$allLocations$locations$info.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$pages = json['pages'];
    final l$next = json['next'];
    final l$$__typename = json['__typename'];
    return Query$allLocations$locations$info(
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
    if (other is! Query$allLocations$locations$info ||
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

extension UtilityExtension$Query$allLocations$locations$info
    on Query$allLocations$locations$info {
  CopyWith$Query$allLocations$locations$info<Query$allLocations$locations$info>
  get copyWith => CopyWith$Query$allLocations$locations$info(this, (i) => i);
}

abstract class CopyWith$Query$allLocations$locations$info<TRes> {
  factory CopyWith$Query$allLocations$locations$info(
    Query$allLocations$locations$info instance,
    TRes Function(Query$allLocations$locations$info) then,
  ) = _CopyWithImpl$Query$allLocations$locations$info;

  factory CopyWith$Query$allLocations$locations$info.stub(TRes res) =
      _CopyWithStubImpl$Query$allLocations$locations$info;

  TRes call({int? count, int? pages, int? next, String? $__typename});
}

class _CopyWithImpl$Query$allLocations$locations$info<TRes>
    implements CopyWith$Query$allLocations$locations$info<TRes> {
  _CopyWithImpl$Query$allLocations$locations$info(this._instance, this._then);

  final Query$allLocations$locations$info _instance;

  final TRes Function(Query$allLocations$locations$info) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? pages = _undefined,
    Object? next = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allLocations$locations$info(
      count: count == _undefined ? _instance.count : (count as int?),
      pages: pages == _undefined ? _instance.pages : (pages as int?),
      next: next == _undefined ? _instance.next : (next as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$allLocations$locations$info<TRes>
    implements CopyWith$Query$allLocations$locations$info<TRes> {
  _CopyWithStubImpl$Query$allLocations$locations$info(this._res);

  TRes _res;

  call({int? count, int? pages, int? next, String? $__typename}) => _res;
}

class Query$allLocations$locations$results {
  Query$allLocations$locations$results({
    this.id,
    this.name,
    this.type,
    this.dimension,
    this.created,
    this.residents,
    this.$__typename = 'Location',
  });

  factory Query$allLocations$locations$results.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$dimension = json['dimension'];
    final l$created = json['created'];
    final l$residents = json['residents'];
    final l$$__typename = json['__typename'];
    return Query$allLocations$locations$results(
      id: (l$id as String?),
      name: (l$name as String?),
      type: (l$type as String?),
      dimension: (l$dimension as String?),
      created: (l$created as String?),
      residents: (l$residents as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$allLocations$locations$results$residents.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? type;

  final String? dimension;

  final String? created;

  final List<Query$allLocations$locations$results$residents?>? residents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$dimension = dimension;
    _resultData['dimension'] = l$dimension;
    final l$created = created;
    _resultData['created'] = l$created;
    final l$residents = residents;
    _resultData['residents'] = l$residents?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$type = type;
    final l$dimension = dimension;
    final l$created = created;
    final l$residents = residents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$type,
      l$dimension,
      l$created,
      l$residents == null ? null : Object.hashAll(l$residents.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$allLocations$locations$results ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$dimension = dimension;
    final lOther$dimension = other.dimension;
    if (l$dimension != lOther$dimension) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$allLocations$locations$results
    on Query$allLocations$locations$results {
  CopyWith$Query$allLocations$locations$results<
    Query$allLocations$locations$results
  >
  get copyWith => CopyWith$Query$allLocations$locations$results(this, (i) => i);
}

abstract class CopyWith$Query$allLocations$locations$results<TRes> {
  factory CopyWith$Query$allLocations$locations$results(
    Query$allLocations$locations$results instance,
    TRes Function(Query$allLocations$locations$results) then,
  ) = _CopyWithImpl$Query$allLocations$locations$results;

  factory CopyWith$Query$allLocations$locations$results.stub(TRes res) =
      _CopyWithStubImpl$Query$allLocations$locations$results;

  TRes call({
    String? id,
    String? name,
    String? type,
    String? dimension,
    String? created,
    List<Query$allLocations$locations$results$residents?>? residents,
    String? $__typename,
  });
  TRes residents(
    Iterable<Query$allLocations$locations$results$residents?>? Function(
      Iterable<
        CopyWith$Query$allLocations$locations$results$residents<
          Query$allLocations$locations$results$residents
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$allLocations$locations$results<TRes>
    implements CopyWith$Query$allLocations$locations$results<TRes> {
  _CopyWithImpl$Query$allLocations$locations$results(
    this._instance,
    this._then,
  );

  final Query$allLocations$locations$results _instance;

  final TRes Function(Query$allLocations$locations$results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? dimension = _undefined,
    Object? created = _undefined,
    Object? residents = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allLocations$locations$results(
      id: id == _undefined ? _instance.id : (id as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      type: type == _undefined ? _instance.type : (type as String?),
      dimension: dimension == _undefined
          ? _instance.dimension
          : (dimension as String?),
      created: created == _undefined ? _instance.created : (created as String?),
      residents: residents == _undefined
          ? _instance.residents
          : (residents
                as List<Query$allLocations$locations$results$residents?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes residents(
    Iterable<Query$allLocations$locations$results$residents?>? Function(
      Iterable<
        CopyWith$Query$allLocations$locations$results$residents<
          Query$allLocations$locations$results$residents
        >?
      >?,
    )
    _fn,
  ) => call(
    residents: _fn(
      _instance.residents?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$allLocations$locations$results$residents(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$allLocations$locations$results<TRes>
    implements CopyWith$Query$allLocations$locations$results<TRes> {
  _CopyWithStubImpl$Query$allLocations$locations$results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? type,
    String? dimension,
    String? created,
    List<Query$allLocations$locations$results$residents?>? residents,
    String? $__typename,
  }) => _res;

  residents(_fn) => _res;
}

class Query$allLocations$locations$results$residents {
  Query$allLocations$locations$results$residents({
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory Query$allLocations$locations$results$residents.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$allLocations$locations$results$residents(
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
    if (other is! Query$allLocations$locations$results$residents ||
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

extension UtilityExtension$Query$allLocations$locations$results$residents
    on Query$allLocations$locations$results$residents {
  CopyWith$Query$allLocations$locations$results$residents<
    Query$allLocations$locations$results$residents
  >
  get copyWith =>
      CopyWith$Query$allLocations$locations$results$residents(this, (i) => i);
}

abstract class CopyWith$Query$allLocations$locations$results$residents<TRes> {
  factory CopyWith$Query$allLocations$locations$results$residents(
    Query$allLocations$locations$results$residents instance,
    TRes Function(Query$allLocations$locations$results$residents) then,
  ) = _CopyWithImpl$Query$allLocations$locations$results$residents;

  factory CopyWith$Query$allLocations$locations$results$residents.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$allLocations$locations$results$residents;

  TRes call({String? name, String? image, String? $__typename});
}

class _CopyWithImpl$Query$allLocations$locations$results$residents<TRes>
    implements CopyWith$Query$allLocations$locations$results$residents<TRes> {
  _CopyWithImpl$Query$allLocations$locations$results$residents(
    this._instance,
    this._then,
  );

  final Query$allLocations$locations$results$residents _instance;

  final TRes Function(Query$allLocations$locations$results$residents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$allLocations$locations$results$residents(
      name: name == _undefined ? _instance.name : (name as String?),
      image: image == _undefined ? _instance.image : (image as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$allLocations$locations$results$residents<TRes>
    implements CopyWith$Query$allLocations$locations$results$residents<TRes> {
  _CopyWithStubImpl$Query$allLocations$locations$results$residents(this._res);

  TRes _res;

  call({String? name, String? image, String? $__typename}) => _res;
}
