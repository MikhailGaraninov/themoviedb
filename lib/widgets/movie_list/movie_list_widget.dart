import 'package:flutter/material.dart';
import 'package:themoviedb/resources/app_images.dart';

class Movie {
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.id,
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MouvieListWidget extends StatefulWidget {
  MouvieListWidget({Key? key}) : super(key: key);

  @override
  State<MouvieListWidget> createState() => _MouvieListWidgetState();
}

class _MouvieListWidgetState extends State<MouvieListWidget> {
  final _movies = [
    Movie(
        id: 1,
        imageName: AppImages.moviePlaceholder,
        title: 'Смертельная битва',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        id: 2,
        imageName: AppImages.moviePlaceholder,
        title: 'Прибытие',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        id: 3,
        imageName: AppImages.moviePlaceholder,
        title: 'Назад в будущее 1',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        id: 4,
        imageName: AppImages.moviePlaceholder,
        title: 'Назад в будущее 2',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        id: 5,
        imageName: AppImages.moviePlaceholder,
        title: 'Пиксели',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        id: 6,
        imageName: AppImages.moviePlaceholder,
        title: 'Человек-паук',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        id: 7,
        imageName: AppImages.moviePlaceholder,
        title: 'Человек из стали',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        id: 8,
        imageName: AppImages.moviePlaceholder,
        title: 'Джентельмены',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        id: 9,
        imageName: AppImages.moviePlaceholder,
        title: 'Тихие зори',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        id: 10,
        imageName: AppImages.moviePlaceholder,
        title: 'В бой идут одни старики',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        id: 11,
        imageName: AppImages.moviePlaceholder,
        title: 'Первому игроку приготовиться',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        id: 12,
        imageName: AppImages.moviePlaceholder,
        title: 'Дюна',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
  ];

  var _filteredMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    var query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }

  void _moviePage(int index) {
    final id = _movies[index].id;
    Navigator.of(context).pushNamed(
      '/movie_screen',
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredMovies.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filteredMovies[index];
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 2)),
                      ],
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Image(image: AssetImage(movie.imageName)),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(movie.title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis),
                              SizedBox(height: 5),
                              Text(movie.time,
                                  style: TextStyle(color: Colors.grey),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis),
                              SizedBox(height: 20),
                              Text(movie.description,
                                  maxLines: 2, overflow: TextOverflow.ellipsis),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => _moviePage(index),
                    ),
                  )
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
                labelText: 'Поиск',
                filled: true,
                fillColor: Colors.white.withAlpha(235),
                border: OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}
