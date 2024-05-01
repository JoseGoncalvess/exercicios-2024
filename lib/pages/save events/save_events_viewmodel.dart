
import 'dart:convert';
import 'dart:developer';

import 'package:chuva_dart/pages/save%20events/save_events.dart';
import 'package:chuva_dart/services/repository/models/data_models.dart';
import 'package:chuva_dart/services/repository/storage.dart';
import 'package:flutter/material.dart';

abstract class SaveEventsViewmodel extends State<SaveEvents> {
  final eventos = ValueNotifier<List<Evento>>([]);
  Future loadEvents ()async{
    List<String> eventString = await Storage().loadEvents();
    List<Evento> newlist = [];
   
    for (var ev in eventString) {
        newlist.add(Evento.fromJson(jsonDecode(ev)));
    }
    eventos.value = newlist;
  }

  Future saveEvent(Evento event) async{
    log(event.toJson().toString());
    Storage().saveEvents(jsonEncode(event));
  }
  
}