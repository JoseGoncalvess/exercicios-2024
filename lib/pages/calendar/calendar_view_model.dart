import 'dart:developer';

import 'package:chuva_dart/pages/calendar/calendar.dart';
import 'package:chuva_dart/services/helpers/enum_state_load.dart';
import 'package:chuva_dart/services/repository/models/data_models.dart';
import 'package:chuva_dart/services/repository/repository.dart';
import 'package:flutter/material.dart';

abstract class CalendarViewModel extends State<Calendar> {

  final  events = ValueNotifier<List<Evento>>([]);
  final stateData = ValueNotifier<EnumStateLoad>(EnumStateLoad.empty);
  Future<List<Evento>> loadEvents() async {
    final DataModels response = await Repository().loaddata();
    return response.data;
    
  }

  filterData({required int date}) async {
   List<Evento> colection = await loadEvents();
   List<Evento> newlist = [];
   for (var ev in colection) {
     if (ev.start.day == date) {
       newlist.add(ev);
     }
   }
   events.value = newlist;
 
  }
  fullData() async {
   List<Evento> colection = await loadEvents();
   List<Evento> newlist = [];
   for (var ev in colection) {
       newlist.add(ev);
   }
   events.value = newlist;
 
  }

}
  
