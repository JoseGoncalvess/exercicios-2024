
import 'dart:convert';

import 'package:chuva_dart/pages/activity/activity.dart';
import 'package:chuva_dart/services/repository/models/data_models.dart';
import 'package:chuva_dart/services/repository/storage.dart';
import 'package:flutter/material.dart';

abstract class ActivityViewModel extends State<Activity> {

final idSaved  = ValueNotifier<List<int>>([]);

  Future loadsId() async{
    List<String> collection = await Storage().loadEvents();
    for (var e in collection) {
      Evento evento = Evento.fromJson(jsonDecode(e));
      idSaved.value.add(evento.id);
    }
  }

}
