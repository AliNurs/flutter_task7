import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          child: SvgPicture.asset(
            'svgs/location.svg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
