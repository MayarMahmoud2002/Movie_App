import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/movies/data/data_source/remote/remote_dataSource.dart';
import 'package:movie_app/movies/domain/entities/movie_entities.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repository/movie_repository.dart';

class MovieRepository extends BaseMovieRepository
{
  final BaseRemoteMovieDataSource baseRemoteMovieDataSource;

  MovieRepository(this.baseRemoteMovieDataSource);

  @override
  Future<Either<Failure,List<MovieEntities>>> getNowPlayingMovie() async {
   final result = await baseRemoteMovieDataSource.getNowPlayingMovie();
   try
   {
     return Right(result);
   } on ServerException catch (failure)
   {
     return Left(ServerFailure(failure.errorMessageModel.statusMessage));
   }
  }

  @override
  Future<Either<Failure, List<MovieEntities>>> getPopularMovie() async {
    final result = await baseRemoteMovieDataSource.getPopularMovie();
    try
    {
      return Right(result);
    } on ServerException catch (failure)
    {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }

  }

  @override
  Future<Either<Failure, List<MovieEntities>>> getTopRatedMovie() async {
    final result = await baseRemoteMovieDataSource.getTopRatedMovie();
    try
    {
      return Right(result);
    } on ServerException catch (failure)
    {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }


}