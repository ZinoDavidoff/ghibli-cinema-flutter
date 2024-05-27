import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ghibli_cinema/models/movie.dart';

class MovieService {
  final String apiUrl = "https://ghibliapi.vercel.app/films";

  Future<List<Movie>> fetchMovies() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  Future<Movie> fetchMovieDetails(String id) async {
    final response = await http.get(Uri.parse('$apiUrl/$id'));

    if (response.statusCode == 200) {
      return Movie.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load movie details');
    }
  }
}
