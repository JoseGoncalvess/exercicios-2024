import 'package:chuva_dart/pages/calendar/widgets/app_bar_widget.dart';
import 'package:chuva_dart/pages/calendar/widgets/list_events_widget.dart';
import 'package:flutter/material.dart';
import 'widgets/data_select_widget.dart';


class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Column(
          children:   [
            AppBarWidget(),
            DataSelectWidget(),
            ListEventsWidget()
           ,
          ],
        ),
      )
    );
  }
}

