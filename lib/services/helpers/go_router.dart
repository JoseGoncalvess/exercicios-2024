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
    path: "/activity",
    builder: (context, state) => const Activity(),
  ),
  GoRoute(
    path: "/activity/personDetails",
    builder: (context, state) => const PersonDetails(),
  )
]);
