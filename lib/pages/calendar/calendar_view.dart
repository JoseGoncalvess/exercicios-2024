import 'package:chuva_dart/pages/calendar/calendar_view_model.dart';
import 'package:chuva_dart/services/helpers/its_time.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/data_select_widget.dart';
import 'widgets/list_events_widget.dart';

class CalendarView extends CalendarViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          ontap: ()=> ItsTime().resumday("domingo"),
          ct: context,
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              DataSelectWidget(
                ontap:(day) => filterData(date: day) ,
              ),
              ValueListenableBuilder(
                valueListenable: events,
                builder: (context, value, child) => ListEventsWidget(
                  onTap: (isActivity, event) => context.push(extra: event, '/activity/$isActivity'),
                  listev: value,
                  
                ),
              ),
            ],
          ),
        ));
  }
}
