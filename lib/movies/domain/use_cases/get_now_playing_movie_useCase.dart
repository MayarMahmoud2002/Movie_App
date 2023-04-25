import 'package:movie_app/movies/domain/entities/movie_entities.dart';
import 'package:movie_app/movies/domain/repository/movie_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';


class GetNowPlayingMovieUseCase
{
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMovieUseCase(this.baseMovieRepository);
  Future<Either<Failure,List<MovieEntities>>>  execute()
  {
    return baseMovieRepository.getNowPlayingMovie();
  }
}