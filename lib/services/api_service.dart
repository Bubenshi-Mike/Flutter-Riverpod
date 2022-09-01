import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../models/movie.dart';

class ApiService {
  String endpoint =
      'https://api.themoviedb.org/3/movie/popular?api_key=9a8f88f0dec520373cc4f013d366a23f&language=en-US';

  Future<List<Movie>> fetchMovies() async {
    var response = await http.get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['results'];
      return result.map((movie) => Movie.fromJSON(movie)).toList();
      // List<Movie> movies = [];
      // for (var item in result['results']) {
      //   movies.add(Movie.fromJson(item));
      // }
      // return movies;
    } else {
      throw Exception('Failed to load movies');
    }
  }
}

final movieProvider = Provider<ApiService>((ref) => ApiService());
