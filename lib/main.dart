import 'package:flutter/material.dart';
import 'pages/activity/activity.dart';
import 'package:from_css_color/from_css_color.dart';

import 'pages/person details/person_details.dart';

void main() {
  runApp(const ChuvaDart());
}

class ChuvaDart extends StatelessWidget {
  const ChuvaDart({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: fromCssColor('#456189')),
        useMaterial3: true,
      ),
      home: const PersonDetails()
    );
  }
}


