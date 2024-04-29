import 'package:chuva_dart/pages/calendar/calendar_view_model.dart';
import 'package:chuva_dart/services/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/data_select_widget.dart';
import 'widgets/list_events_widget.dart';

class CalendarView extends CalendarViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          ct: context,
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              DataSelectWidget(
                press: () => loadEvents(),
              ),
              ValueListenableBuilder(
                valueListenable: events,
                builder: (context, value, child) => ListEventsWidget(
                  function: () => Repository().readJson(),
                  listev: value,
                  // context.push('/activity/${true}'),
                ),
              ),
            ],
          ),
        ));
  }
}
