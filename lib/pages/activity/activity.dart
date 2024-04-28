import 'package:chuva_dart/pages/activity/activity_view.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({super.key, required this.isActivity});
  final bool isActivity;

  @override
  ActivityView createState() => ActivityView();
}
