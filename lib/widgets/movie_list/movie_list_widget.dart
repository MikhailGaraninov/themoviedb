import 'package:flutter/material.dart';
import 'package:themoviedb/resources/app_images.dart';

class Movie {
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MouvieListWidget extends StatelessWidget {
  final _movies = [
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Смертельная битва',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Прибытие',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Назад в будущее 1',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Назад в будущее 2',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Пиксели',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Человек-паук',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Человек из стали',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Джентельмены',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Тихие зори',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'В бой идут одни старики',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Первому игроку приготовиться',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Дюна',
        time: 'April 7, 2021',
        description:
            'Washed uo MMA fighter Cole Young, unaware of his heritage'),
  ];
  MouvieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ListView.builder(
        padding: EdgeInsets.only(top: 70),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemCount: _movies.length,
        itemExtent: 163,
        itemBuilder: (BuildContext context, int index) {
          final movie = _movies[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
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
                    onTap: () {},
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
