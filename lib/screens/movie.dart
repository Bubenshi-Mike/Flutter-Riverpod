import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../models/movie.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key, required this.movie}) : super(key: key);

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://image.tmdb.org/t/p/w500${movie.backdropPath}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(movie.originalTitle),
              const Gap(10),
              Row(
                children: [
                  Text(movie.releaseDate.toString()),
                  const Gap(10),
                  Text("English (${movie.originalLanguage})"),
                  const Gap(10),
                  Text(movie.popularity.toString()),
                ],
              ),
              const Gap(10),
              Row(
                children: [
                  Text(movie.voteAverage.toString()),
                  const Gap(10),
                  Text(movie.voteCount.toString()),
                  // const Gap(10),
                  // Text(movie.),
                ],
              ),
              const Gap(10),
              Text(movie.overview),
              // Text(movie.releaseDate.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
