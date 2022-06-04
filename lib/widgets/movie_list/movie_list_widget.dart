import 'package:flutter/material.dart';
import 'package:themoviedb/resources/app_images.dart';

class MouvieListWidget extends StatelessWidget {
  const MouvieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemExtent: 163,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Stack(
            children: [ Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.2),),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0,2)
                  ),
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Image(image: AssetImage(AppImages.moviePlaceholder)),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: const [
                    SizedBox(height: 20),
                    Text('Motral Kombat',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis
                    ),
                    SizedBox(height: 5),
                    Text('April 7, 2021',
                      style: TextStyle(color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis
                    ),
                    SizedBox(height: 20), 
                    Text('To register for an API key, click the API link from within your account settings page. You can also view the screenshots below for help:',
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
              child: InkWell(onTap: (){
                
              },),
            )
            ],
          ),
          
        );
      },
    );
  }
}
