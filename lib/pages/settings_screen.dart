import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          child: SvgPicture.asset(
            'svgs/settings.svg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
