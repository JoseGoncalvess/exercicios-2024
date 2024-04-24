import 'package:flutter/material.dart';

class EventCardWidget extends StatefulWidget {

  const EventCardWidget({ super.key });

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
                            color: Colors.grey,
                            blurRadius: 5,
                            spreadRadius: 3
                          )
                        ]
                      ),
                      width: MediaQuery.of(context).size.width * 0.95,
                      height:MediaQuery.of(context).size.height * 0.17 ,
                      child: Row(
                        children: [
                     Container(
                       decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(6),bottomLeft: Radius.circular(6)),
                        color: Colors.red,
                      
                      ),
                     
                      width: MediaQuery.of(context).size.width * 0.03,
                      
                     ),
                     Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07),
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text("Evneto de 07:00 até 08:30",style: TextStyle(fontSize: MediaQuery.sizeOf(context).width * 0.04, fontWeight: FontWeight.w400)),
                                Text("A Física dos Buracos Negros Supermassivos", style: TextStyle(fontSize: MediaQuery.sizeOf(context).width * 0.05, fontWeight: FontWeight.w500),),
                                Text("Sthepen William Hawking",style: TextStyle(fontSize: MediaQuery.sizeOf(context).width * 0.04,color: Colors.grey, fontWeight: FontWeight.w500))],
                              ),
                     )
                        ],
                      ),
                    ),
              )
        ] ,
       );
  }
}