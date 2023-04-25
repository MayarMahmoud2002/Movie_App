import 'package:movie_app/movies/domain/entities/movie_entities.dart';

class MovieModel extends MovieEntities {
  MovieModel({required super.id,
    required super.backdropPath,
    required super.genreIds,
    required super.title,
    required super.overview,
    required super.releaseDate,
    required super.voteAverage});

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      MovieModel(
          id: json["id"],
          backdropPath: json ["backdrop_path"],
          genreIds: json ["genre_ids"],
          title: json ["title"],
          overview: json ["overview"],
          releaseDate: json ["release_date"],
          voteAverage: json ["vote_average"],
      );
}
