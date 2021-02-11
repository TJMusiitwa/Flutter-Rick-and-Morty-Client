import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:ricky_n_morty/graphql/allCharacters.data.gql.dart'
    show
        GallCharactersData,
        GallCharactersData_characters,
        GallCharactersData_characters_info,
        GallCharactersData_characters_results;
import 'package:ricky_n_morty/graphql/allCharacters.req.gql.dart'
    show GallCharactersReq;
import 'package:ricky_n_morty/graphql/allCharacters.var.gql.dart'
    show GallCharactersVars;
import 'package:ricky_n_morty/graphql/allEpisodes.data.gql.dart'
    show
        GallEpisodesData,
        GallEpisodesData_episodes,
        GallEpisodesData_episodes_info,
        GallEpisodesData_episodes_results;
import 'package:ricky_n_morty/graphql/allEpisodes.req.gql.dart'
    show GallEpisodesReq;
import 'package:ricky_n_morty/graphql/allEpisodes.var.gql.dart'
    show GallEpisodesVars;
import 'package:ricky_n_morty/graphql/allLocations.data.gql.dart'
    show
        GallLocationsData,
        GallLocationsData_locations,
        GallLocationsData_locations_info,
        GallLocationsData_locations_results;
import 'package:ricky_n_morty/graphql/allLocations.req.gql.dart'
    show GallLocationsReq;
import 'package:ricky_n_morty/graphql/allLocations.var.gql.dart'
    show GallLocationsVars;
import 'package:ricky_n_morty/graphql/characterDetails.data.gql.dart'
    show
        GcharacterDetailsData,
        GcharacterDetailsData_character,
        GcharacterDetailsData_character_episode,
        GcharacterDetailsData_character_origin;
import 'package:ricky_n_morty/graphql/characterDetails.req.gql.dart'
    show GcharacterDetailsReq;
import 'package:ricky_n_morty/graphql/characterDetails.var.gql.dart'
    show GcharacterDetailsVars;
import 'package:ricky_n_morty/graphql/episodeDetails.data.gql.dart'
    show
        GepisodeDetailsData,
        GepisodeDetailsData_episode,
        GepisodeDetailsData_episode_characters;
import 'package:ricky_n_morty/graphql/episodeDetails.req.gql.dart'
    show GepisodeDetailsReq;
import 'package:ricky_n_morty/graphql/episodeDetails.var.gql.dart'
    show GepisodeDetailsVars;
import 'package:ricky_n_morty/graphql/locationDetails.data.gql.dart'
    show
        GLocationDetailsData,
        GLocationDetailsData_location,
        GLocationDetailsData_location_residents;
import 'package:ricky_n_morty/graphql/locationDetails.req.gql.dart'
    show GLocationDetailsReq;
import 'package:ricky_n_morty/graphql/locationDetails.var.gql.dart'
    show GLocationDetailsVars;
import 'package:ricky_n_morty/graphql/schema.schema.gql.dart'
    show
        GCacheControlScope,
        GFilterCharacter,
        GFilterEpisode,
        GFilterLocation,
        GUpload;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCacheControlScope,
  GFilterCharacter,
  GFilterEpisode,
  GFilterLocation,
  GLocationDetailsData,
  GLocationDetailsData_location,
  GLocationDetailsData_location_residents,
  GLocationDetailsReq,
  GLocationDetailsVars,
  GUpload,
  GallCharactersData,
  GallCharactersData_characters,
  GallCharactersData_characters_info,
  GallCharactersData_characters_results,
  GallCharactersReq,
  GallCharactersVars,
  GallEpisodesData,
  GallEpisodesData_episodes,
  GallEpisodesData_episodes_info,
  GallEpisodesData_episodes_results,
  GallEpisodesReq,
  GallEpisodesVars,
  GallLocationsData,
  GallLocationsData_locations,
  GallLocationsData_locations_info,
  GallLocationsData_locations_results,
  GallLocationsReq,
  GallLocationsVars,
  GcharacterDetailsData,
  GcharacterDetailsData_character,
  GcharacterDetailsData_character_episode,
  GcharacterDetailsData_character_origin,
  GcharacterDetailsReq,
  GcharacterDetailsVars,
  GepisodeDetailsData,
  GepisodeDetailsData_episode,
  GepisodeDetailsData_episode_characters,
  GepisodeDetailsReq,
  GepisodeDetailsVars
])
final Serializers serializers = _serializersBuilder.build();
