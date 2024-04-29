import 'package:chuva_dart/pages/activity/activity_view.dart';
import 'package:chuva_dart/services/repository/models/data_models.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({super.key, required this.isActivity, required this.evento});
  final bool isActivity;
  final Evento evento;
  
  @override
  ActivityView createState() => ActivityView();
}
