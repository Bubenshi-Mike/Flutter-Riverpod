import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lyree/screens/movie.dart';

import '../models/movie.dart';
import '../providers/movie.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final res = ref.watch(movieData);
    return Scaffold(
      body: res.when(
        data: (res) {
          List<Movie> movieList = res.map((movie) => movie).toList();

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: movieList.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MovieDetails(
                            movie: movieList[index],
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Text(movieList[index].originalTitle),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
        error: (err, s) => Center(child: Text(err.toString())),
        loading: () => Center(
          child: SpinKitFadingCube(
            color: Colors.indigo[600],
            size: 50,
            duration: const Duration(milliseconds: 500),
          ),
        ),
      ),
    );
  }
}
