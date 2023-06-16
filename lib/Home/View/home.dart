import 'package:flutter/material.dart';
import 'package:ott_platform/Home/Widgets/Suggestion.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Suggestion(),
      ]),
    );
  }
}
