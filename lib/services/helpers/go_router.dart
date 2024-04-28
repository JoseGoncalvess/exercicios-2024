import 'package:chuva_dart/pages/activity/activity.dart';
import 'package:chuva_dart/pages/calendar/calendar.dart';
import 'package:chuva_dart/pages/person%20details/person_details.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRouter = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const Calendar(),
  ),
  GoRoute(
      path: "/activity/:isActivity",
      builder: (context, state) => Activity(
          isActivity: bool.parse(state.pathParameters['isActivity']!))),
  GoRoute(
    path: "/activity/:isActivity/persondetatils",
    builder: (context, state) => const PersonDetails(),
  )
]);
