import 'package:flutter/material.dart';
import 'package:themoviedb/resources/app_images.dart';
import 'package:themoviedb/widgets/movie_details/movie_details_main_screen_cast.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        _TopPosterWidget(),
        Padding(
          padding: EdgeInsets.all(15),
          child: _MovieNameWidget(),
        ),
        _ScoreWidget(),
        _SummaryWidget(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _OverviewWidget(),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: _DescriptionWidget(),
        ),
        _PeopleWidget(),
        SizedBox(height: 10),
      ],
    );
  }
}

Text _OverviewWidget() {
  return Text(
    "Обзор",
    style: TextStyle(
        color: Colors.black, 
        fontSize: 17, 
        fontWeight: FontWeight.w600),
  );
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RichText(
        maxLines: 3,
        textAlign: TextAlign.center,
        text: TextSpan(
          children: const [
            TextSpan(
              text: "Варяг",
              style: TextStyle(
                  color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
            ),
            TextSpan(
              text: " (2021)",
              style: TextStyle(
                  color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: AssetImage(AppImages.varyagBig)),
        Positioned(
            top: 20,
            left: 20,
            bottom: 20,
            child: Image(image: AssetImage(AppImages.varyagSmall))),
      ],
    );
  }
}

class _SummaryWidget extends StatelessWidget {
  const _SummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color.fromRGBO(198, 198, 198, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        child: Text(
          "16 14/04/2022 (NL) 2h17m боевик, приключения, фэнтези",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Конец IX века, небольшой остров в Северной Атлантике. Король Орвандилл с серьёзным ранением возвращается из похода к жене Гудрун и юному сыну Амлету. Мечтая отправиться на очередное сражение и умереть на поле боя, он передаёт трон сыну, но тут же погибает от руки брата Фьолнира — тот отрубает монарху голову и забирает королевство и Гудрун себе. Мальчику удаётся сбежать. Спустя десятилетия Амлет вырастает в крепкого безжалостного викинга и однажды в очередной разорённой деревне встречает ведьму, которая наставляет его на пусть мести. Узнав, что Фьолнир с Гудрун поселились в Исландии, Амлет отправляется туда с партией славянских рабов. На борту его внимание привлекает Ольга из Березового леса.",
      style: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
    );
  }
}

class _PeopleWidget extends StatelessWidget {
  const _PeopleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameStyle = TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600);
    final jobTitleStyle = TextStyle(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600);
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Stefano Sollima",
                  style: nameStyle,
                ),
                Text("Director", style: jobTitleStyle)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Robert Eggers", style: nameStyle),
                Text("Writer", style: jobTitleStyle)
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Robert Eggers", style: nameStyle),
                Text("Writer", style: jobTitleStyle)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Robert Eggers", style: nameStyle),
                Text("Writer", style: jobTitleStyle)
              ],
            )
          ],
        ),
      ],
    );
  }
}
