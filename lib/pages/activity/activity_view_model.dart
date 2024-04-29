import 'dart:developer';

import 'package:chuva_dart/pages/activity/activity.dart';
import 'package:flutter/material.dart';

import '../../services/repository/models/data_models.dart';
import '../../services/repository/repository.dart';

abstract class ActivityViewModel extends State<Activity> {
  late Evento evento;
  Future getEvent(int id) async {
    final DataModels response = await Repository().loaddata();
    evento = response.data.firstWhere((e) => e.id == id);
    log(evento.toString());
    
  }
  


}
