import 'package:chuva_dart/pages/person%20details/person_details_view.dart';
import 'package:chuva_dart/services/repository/models/people_models.dart';
import 'package:flutter/material.dart';

class PersonDetails extends StatefulWidget {
  const PersonDetails({super.key, required this.people, required this.dayname, required this.start,});
  final PeopleModels people;
  final String dayname;
  final String start;
  

  @override
  PersonDetailsView createState() => PersonDetailsView();
}
