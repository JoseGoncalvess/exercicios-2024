
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../services/repository/models/data_models.dart';
import 'event_card_widget.dart';

class ListEventsWidget extends StatelessWidget {
  final Function( bool isActivity,Map<String,dynamic> event) onTap;
  final List<Evento> listev;
  
  const ListEventsWidget(
      {super.key, required this.onTap, required this.listev});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.98,
      height: MediaQuery.of(context).size.height * 0.7,
      child:  ListView.builder(
        padding: EdgeInsets.only(top: 7),
        itemCount: listev.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () =>  onTap(false, listev[index].toJson()),
          child: EventCardWidget(
            colorsBand:listev[index].category.color??'#B640F5' ,
          eventName:listev[index].type.title.ptBr! ,
          people:listev[index].people.isNotEmpty?listev[index].people:[],
          start: listev[index].start,
          title: listev[index].title.ptBr!,
          end: listev[index].end,
         
          ),
        ),
      ),
    );
  }
}
