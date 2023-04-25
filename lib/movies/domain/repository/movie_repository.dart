import 'package:movie_app/movies/domain/entities/movie_entities.dart';
import 'package:dartz/dartz.dart';
import '../../../core/error/failure.dart';

abstract class BaseMovieRepository
{
  Future<Either<Failure,List<MovieEntities>>>  getNowPlayingMovie();
  Future<Either<Failure,List<MovieEntities>>>  getTopRatedMovie();
  Future<Either<Failure,List<MovieEntities>>>  getPopularMovie();
}