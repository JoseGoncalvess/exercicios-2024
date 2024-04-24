import 'package:chuva_dart/pages/calendar/widgets/custom_app_bar_widget.dart';
import 'package:chuva_dart/pages/calendar/widgets/list_events_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/data_select_widget.dart';


class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  // DateTime _currentDate = DateTime(2023, 11, 26);
  // bool _clicked = false;


  // void _changeDate(DateTime newDate) {
  //   setState(() {
  //     _currentDate = newDate;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const  CustomAppBarWidget(),
           const DataSelectWidget(),
           ListEventsWidget()
           ,
          ],
        ),
      )
    );
  }
}




// Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Programação',
//             ),
//             const Text(
//               'Nov',
//             ),
//             const Text(
//               '2023',
//             ),
//             OutlinedButton(
//               onPressed: () {
//                 _changeDate(DateTime(2023, 11, 26));
//               },
//               child: Text(
//                 '26',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//             ),
//             OutlinedButton(
//               onPressed: () {
//                 _changeDate(DateTime(2023, 11, 28));
//               },
//               child: Text(
//                 '28',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//             ),
//             if (_currentDate.day == 26)
//               OutlinedButton(
//                   onPressed: () {
//                     setState(() {
//                       _clicked = true;
//                     });
//                   },
//                   child: const Text('Mesa redonda de 07:00 até 08:00')),
//             if (_currentDate.day == 28)
//               OutlinedButton(
//                   onPressed: () {
//                     setState(() {
//                       _clicked = true;
//                     });
//                   },
//                   child: const Text('Palestra de 09:30 até 10:00')),
//             if (_currentDate.day == 26 && _clicked) const Activity(),
//           ],
//         ),
//       ),