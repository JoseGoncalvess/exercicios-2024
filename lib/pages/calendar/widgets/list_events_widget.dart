import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'event_card_widget.dart';

class ListEventsWidget extends StatelessWidget {

  const ListEventsWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
            width: MediaQuery.of(context).size.width * 0.98,
            height: MediaQuery.of(context).size.height * 0.7, 
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => const EventCardWidget() , 
          ),
          );
       
       ;}
}
