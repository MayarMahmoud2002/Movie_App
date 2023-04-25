class MovieEntities {
  final int id;
  final String backdropPath;
  final List<int> genreIds;
  final String title;
  final String overview;
  final int releaseDate;
  final double voteAverage;

  MovieEntities({
    required this.id,
    required this.backdropPath,
    required this.genreIds,
    required this.title,
    required this.overview,
    required this.releaseDate,
    required this.voteAverage,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieEntities &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          backdropPath == other.backdropPath &&
          genreIds == other.genreIds &&
          title == other.title &&
          overview == other.overview &&
          releaseDate == other.releaseDate &&
          voteAverage == other.voteAverage;

  @override
  int get hashCode =>
      id.hashCode ^
      backdropPath.hashCode ^
      genreIds.hashCode ^
      title.hashCode ^
      overview.hashCode ^
      releaseDate.hashCode ^
      voteAverage.hashCode;
}
