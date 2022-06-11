import 'package:flutter/material.dart';

class MovieScreenWidget extends StatefulWidget {
  const MovieScreenWidget({Key? key}) : super(key: key);

  @override
  State<MovieScreenWidget> createState() => _MovieScreenWidgetState();
}

class _MovieScreenWidgetState extends State<MovieScreenWidget> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
      ),
      body: ListView(
         children: [
           SizedBox(height: 10),
           _MovieInfoWidget(),
         ]
      ),
    );
  }
}


class _MovieInfoWidget extends StatelessWidget {
  const _MovieInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 25),
          Text(
            'In order to use the editing and rating capablities of TMDb, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. ',
            style: textStyle,
          ),
          SizedBox(height: 5),
          SizedBox(height: 25),
          Text(
            "If you signed up but but didn't get your notification email.",
            style: textStyle,
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}