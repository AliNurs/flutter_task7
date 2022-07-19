import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personaj'),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          child: SvgPicture.asset(
            'svgs/character.svg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
