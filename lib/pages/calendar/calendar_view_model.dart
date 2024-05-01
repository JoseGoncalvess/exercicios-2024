import 'dart:convert';

import 'package:chuva_dart/pages/calendar/calendar.dart';
import 'package:chuva_dart/services/repository/models/data_models.dart';
import 'package:chuva_dart/services/repository/repository.dart';
import 'package:chuva_dart/services/repository/storage.dart';
import 'package:flutter/material.dart';

import '../../services/helpers/enum_stateload.dart';



abstract class CalendarViewModel extends State<Calendar> {
  final state =  ValueNotifier<Stateload>(Stateload.empyt);
  final events = ValueNotifier<List<Evento>>([]);
  final idSaved  = ValueNotifier<List<int>>([]);
  Future<List<Evento>> loadEvents() async {
    final DataModels response = await Repository().loaddata();
    return response.data;
  }

  filterData({required int date}) async {
    List<Evento> colection = await loadEvents();
    List<Evento> newlist = [];
    state.value = Stateload.loading;
    for (var ev in colection) {
      if (ev.start.day == date) {
        newlist.add(ev);
      }
    }
    events.value = newlist;
    state.value = Stateload.loaded;
  }

  fullData() async {
    List<Evento> colection = await loadEvents();
    List<Evento> newlist = [];
    state.value = Stateload.loading;
    for (var ev in colection) {
      newlist.add(ev);
    }
    events.value = newlist;
    state.value = Stateload.loaded;
  }

    Future loadsId() async{
    List<String> collection = await Storage().loadEvents();
    for (var e in collection) {
      Evento evento = Evento.fromJson(jsonDecode(e));
      idSaved.value.add(evento.id);
    }
  }
}
