import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EpisodeScreen extends StatelessWidget {
  const EpisodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Episode'),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          child: SvgPicture.asset(
            'svgs/episodes.svg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
