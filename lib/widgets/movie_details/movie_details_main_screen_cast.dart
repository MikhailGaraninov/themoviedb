import 'package:flutter/material.dart';
import 'package:themoviedb/resources/app_images.dart';

class MovieDetailsMainScreenCastWidget extends StatelessWidget {
  const MovieDetailsMainScreenCastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final familyTextStyle = TextStyle(
        color: Colors.black, 
        fontSize: 16, 
        fontWeight: FontWeight.w600);

    return ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("В главных ролях"),
          SizedBox(
            height: 230,
            child: Scrollbar(
              child: ListView.builder(
                itemCount: 20,
                itemExtent: 120,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.black.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              8), //adding a circular border with image
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(image: AssetImage(AppImages.scarsgard)),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Aleksander Scarsgard",
                                      style: familyTextStyle,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis
                                    ),
                                    Text("Amleth"),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  );
                },
              ),
            ),
          ),
          Text(
            "Something",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
