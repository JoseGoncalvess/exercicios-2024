// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chuva_dart/services/helpers/its_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:from_css_color/from_css_color.dart';

import '../../../services/repository/models/people_models.dart';

class EventCardWidget extends StatefulWidget {
  const EventCardWidget({
    Key? key,
 required this.title, required this.people, required this.start, required this.end, required this.eventName, required this.colorsBand,
  }) : super(key: key);
  final String title;
  final List<PeopleModels> people;
  final DateTime start;
  final DateTime end;
  final String eventName;
  final String colorsBand;

  @override
  State<EventCardWidget> createState() => _EventCardWidgetState();
}

class _EventCardWidgetState extends State<EventCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 9.0),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 5, spreadRadius: 3)
                ]),
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.13,
            child: Row(
              children: [
                Container(
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6)),
                    color: fromCssColor(widget.colorsBand),
                  ),
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.07),
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${widget.eventName} ${ItsTime().timeforEvent(widget.start, widget.end)}",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.04,
                              fontWeight: FontWeight.w400)),
                      Flexible( 
          
                        child: Text(
                           
                          widget.title,
                          style: TextStyle(
                              fontSize: MediaQuery.sizeOf(context).width * 0.04,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row( 
                        mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children: widget.people.map((e) => Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Text(e.name,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.sizeOf(context).width * 0.033,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500)),
                        )).toList(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

