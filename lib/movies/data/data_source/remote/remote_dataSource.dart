import 'package:dio/dio.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/network/error_message_model.dart';
import 'package:movie_app/core/utilis/api_constances.dart';
import 'package:movie_app/movies/data/model/movie_model.dart';


abstract class BaseRemoteMovieDataSource
{

  Future<List<MovieModel>>  getNowPlayingMovie();
  Future <List<MovieModel>> getTopRatedMovie();
  Future <List<MovieModel>> getPopularMovie();

}
class RemoteMovieDataSource
{
  Future <List<MovieModel>> getNowPlayingMovie() async
  {
    final response = await Dio().get(ApiConstances.getNowPlayingPath);

    if(response.statusCode == 200)
    {
      return List<MovieModel>.from((response.data["results"] as List).map((e) => MovieModel.fromJson(e)));
    }else

      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
  }

  Future <List<MovieModel>> getTopRatedMovie() async
  {
    final response = await Dio().get(ApiConstances.getTopRatedPath);

    if(response.statusCode == 200)
    {
      return List<MovieModel>.from((response.data["results"] as List).map((e) => MovieModel.fromJson(e)));
    }else
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
  }

  Future <List<MovieModel>> getPopularMovie() async
  {
    final response = await Dio().get(ApiConstances.getPopularPath);

    if(response.statusCode == 200)
    {
      return List<MovieModel>.from((response.data["results"] as List).map((e) => MovieModel.fromJson(e)));
    }else

      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
  }
}