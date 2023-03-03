import 'package:equatable/equatable.dart';

class MovieEntities extends Equatable  {
  final int id;

  final String backdropPath;
  final String title;
  final String overView;
  final double voteAverage;
  final  List<int>  genreIds;

  const MovieEntities(
  {
    required this.id,
    required this.backdropPath,
    required this.title,
    required this.overView,
    required this.voteAverage,
    required this.genreIds,
  }
      );

  @override
  List<Object?> get props =>
      [
        id,
        backdropPath,
        title,
        overView,
        voteAverage,
        genreIds,
      ];






  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is MovieEntities &&
  //         runtimeType == other.runtimeType &&
  //         id == other.id &&
  //         backdropPath == other.backdropPath &&
  //         title == other.title &&
  //         overView == other.overView &&
  //         voteAverage == other.voteAverage &&
  //         genreIds == other.genreIds;
  //
  // @override
  // int get hashCode =>
  //     id.hashCode ^
  //     backdropPath.hashCode ^
  //     title.hashCode ^
  //     overView.hashCode ^
  //     voteAverage.hashCode ^
  //     genreIds.hashCode;
}
