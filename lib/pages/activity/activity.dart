
import 'package:chuva_dart/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  bool _favorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: 
        Column(
          children: [
            CustomAppBarWidget(),
            
          ],
        ),
      )
      
      );
  }
}
