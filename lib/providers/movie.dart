import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/movie.dart';
import '../services/api_service.dart';

final movieData = FutureProvider<List<Movie>>((ref) async {
  return ref.watch(movieProvider).fetchMovies();
});
