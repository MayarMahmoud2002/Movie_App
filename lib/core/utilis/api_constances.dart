class ApiConstances
{
  static const String baseURL = "https://api.themoviedb.org/3";
  static const String apiKey = "e086d3e89221106099aa9c11d0599118";
  static const String getNowPlayingPath = "$baseURL/movie/now_playing?api_key=$apiKey";
  static const String getTopRatedPath = "$baseURL/movie/top_rated?api_key=$apiKey";
  static const String getPopularPath = "$baseURL/movie/popular?api_key=$apiKey";

}