import 'dart:convert';
import 'dart:developer';

import 'package:chuva_dart/pages/activity/activity.dart';
import 'package:chuva_dart/pages/calendar/calendar.dart';
import 'package:chuva_dart/pages/calendar/calendar_view.dart';
import 'package:chuva_dart/pages/person%20details/person_details.dart';
import 'package:chuva_dart/services/repository/models/data_models.dart';
import 'package:go_router/go_router.dart';

import '../repository/repository.dart';



final GoRouter goRouter = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const Calendar(),
  ),
  GoRoute(
      path: "/activity/:isActivity/:event",
      builder: (context, state) {

      return Activity(
        evento: Evento.fromJson(jsonDecode(state.pathParameters['event']!)), 
          isActivity: bool.parse(state.pathParameters['isActivity']!));

      }),
  GoRoute(
    path: "/activity/:isActivity/persondetatils",
    builder: (context, state) => const PersonDetails(),
  )
]);
