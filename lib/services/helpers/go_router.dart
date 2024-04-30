import 'package:chuva_dart/pages/activity/activity.dart';
import 'package:chuva_dart/pages/calendar/calendar.dart';
import 'package:chuva_dart/pages/person%20details/person_details.dart';
import 'package:chuva_dart/services/repository/models/data_models.dart';
import 'package:chuva_dart/services/repository/models/people_models.dart';
import 'package:go_router/go_router.dart';



final GoRouter goRouter = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const Calendar(),
  ),
  GoRoute(
      path: "/activity/:isActivity",
      builder: (context, state) {
        Evento ev = state.extra as Evento;
      return Activity(
        evento: ev, 
          isActivity: bool.parse(state.pathParameters['isActivity']!));

      }),
  GoRoute(
    path: "/activity/:isActivity/persondetatils",
    builder: (context, state){
      List<Object> extra = state.extra! as List<Object>;

    return  PersonDetails(people: extra[0] as PeopleModels,dayname: extra[1] as String,start: extra[2]as String,);
    }  ,
  )
]);
