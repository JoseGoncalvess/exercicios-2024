import 'package:chuva_dart/pages/calendar/calendar_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../components/card_information_widget.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/data_select_widget.dart';
import 'widgets/list_events_widget.dart';

class CalendarView extends CalendarViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          ontap: () => fullData(),
          ct: context,
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              DataSelectWidget(
                ontap: (day) => filterData(date: day),
              ),
              ValueListenableBuilder(
                valueListenable: events,
                builder: (context, value, child) => value.isEmpty
                    ? const Expanded(child: CardInformationWidget())
                    : ListEventsWidget(
                        onTap: (isActivity, event) =>
                            context.push(extra: event, '/activity/$isActivity'),
                        listev: value,
                      ),
              ),
            ],
          ),
        ));
  }
}
