import 'package:chuva_dart/services/helpers/go_router.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class ChuvaDart extends StatelessWidget {
  const ChuvaDart({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: fromCssColor('#456189')),
        useMaterial3: true,
      ),
      routerConfig: goRouter,
    );
  }
}
