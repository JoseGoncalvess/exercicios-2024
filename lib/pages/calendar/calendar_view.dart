import 'package:chuva_dart/pages/calendar/calendar_view_model.dart';
import 'package:flutter/material.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/data_select_widget.dart';
import 'widgets/list_events_widget.dart';

class CalendarView extends CalendarViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Column(
        children: [
          AppBarWidget(),
          DataSelectWidget(),
          ListEventsWidget(),
        ],
      ),
    ));
  }
}
