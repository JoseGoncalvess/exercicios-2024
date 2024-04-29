import 'package:chuva_dart/pages/calendar/calendar.dart';
import 'package:chuva_dart/services/repository/models/data_models.dart';
import 'package:chuva_dart/services/repository/repository.dart';
import 'package:flutter/material.dart';

abstract class CalendarViewModel extends State<Calendar> {
  final events = ValueNotifier<List<Evento>>([]);
  Future<void> loadEvents() async {
    final DataModels response = await Repository().readJson();
    events.value = response.data;
  }
}
