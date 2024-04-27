import 'package:chuva_dart/pages/person%20details/widgets/custom_details_person.dart';
import 'package:flutter/material.dart';

import '../../components/custom_app_bar_widget.dart';

class PersonDetails extends StatefulWidget {
  const PersonDetails({super.key});

  @override
  State<PersonDetails> createState() => _PersonDetailsState();
}

class _PersonDetailsState extends State<PersonDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [CustomAppBarWidget(), CustomDetailsPerson()],
        ),
      ),
    );
  }
}
