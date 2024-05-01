import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../services/repository/models/data_models.dart';
import 'event_card_widget.dart';

class ListEventsWidget extends StatelessWidget {
  final Function( bool isActivity,Evento event) onTap;
  final List<Evento> listev;
  final bool issaved;
  final List<int> idSave;
  
  const ListEventsWidget(
      {super.key, required this.onTap, required this.listev, required this.issaved, required this.idSave});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.98,
      height: MediaQuery.of(context).size.height * 0.7,
      child:  ListView.builder(
        padding: const EdgeInsets.only(top: 7),
        itemCount: listev.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () =>  onTap(false, listev[index]),
          child: EventCardWidget(
            issaved: idSave.contains(listev[index].id),
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
