import 'package:chuva_dart/pages/person%20details/person_details.dart';
import 'package:chuva_dart/services/repository/models/people_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../services/repository/models/data_models.dart';
import '../../services/repository/repository.dart';

abstract class PersonDetailsViewModel extends State<PersonDetails> {
  final  eventesPerosn = ValueNotifier<List<Evento>>([]);

   Future<List<Evento>> loadEvents() async {
    final DataModels response = await Repository().loaddata();
    return response.data;
    
  }

  loadEventsforDay({required String day,required PeopleModels person}) async{
  List<Evento> collection = await loadEvents();
    List<Evento> newlist = [];
        for (var ev in collection) {
          if (ev.start.day == int.parse(day)) {
            for (var p in ev.people) {
              if (p.name == person.name) {
                newlist.add(ev);
              }
            }
           
          }
        }
    eventesPerosn.value = newlist;

    }


}
