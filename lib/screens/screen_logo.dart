import 'package:flutter/material.dart';

class ScreenLogo extends StatelessWidget {
  const ScreenLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Logo', style: Theme.of(context).textTheme.headline2));
  }
}
