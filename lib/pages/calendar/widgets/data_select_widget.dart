import 'package:chuva_dart/pages/calendar/calendar_view.dart';
import 'package:chuva_dart/pages/calendar/widgets/card_date_select_widget.dart';
import 'package:flutter/material.dart';

class DataSelectWidget extends StatefulWidget {
  const DataSelectWidget({super.key, required this.ontap,});
    final  Function (int day) ontap;

  @override
  State<DataSelectWidget> createState() => _DataSelectWidgetState();
}

class _DataSelectWidgetState extends State<DataSelectWidget> {
  final List<int> data = [26, 27, 28, 29, 30];
  int pageValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.08,
      width: MediaQuery.sizeOf(context).width,
      child: Row(children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.08,
          width: MediaQuery.sizeOf(context).width * 0.18,
          decoration: const BoxDecoration(color: Colors.white),
          child: Text(
            "Nov\n2023",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).width * 0.05,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.82,
          height: MediaQuery.sizeOf(context).height * 0.075,
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          child: Row(
            children: data
                .map((day) => GestureDetector(
                    onTap: () => {
                         widget.ontap(day),
                          setState(() {
                            pageValue = day;
                          }),
                        },
                    child: CardDateSelectWidget(
                      day: day.toString(),
                      select: pageValue == day,
                    )))
                .toList(),
          ),
        )
      ]),
    );
  }
}
