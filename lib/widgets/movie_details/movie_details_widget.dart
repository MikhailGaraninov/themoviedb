import 'package:flutter/material.dart';
import 'package:themoviedb/resources/app_images.dart';
import 'package:themoviedb/widgets/movie_details/movie_details_main_info_widget.dart';
import 'package:themoviedb/widgets/movie_details/movie_details_main_screen_cast.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  const MovieDetailsWidget({Key? key,
  required this.movieId,
  }) : super(key: key);

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tom Clancy's without Remorse"),
      ),
      body: ColoredBox(
        color: Color.fromRGBO(221, 221, 221, 1),
        child: ListView(children: [
          MovieDetailsMainInfoWidget(),
          MovieDetailsMainScreenCastWidget(),
        ]),
      ),
    );
  }
}

