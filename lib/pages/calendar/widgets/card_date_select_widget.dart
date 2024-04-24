// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardDateSelectWidget extends StatefulWidget {

   const CardDateSelectWidget({
    Key? key,
    required this.day,
    required this.select,
  }) : super(key: key);
  final String day;
  final bool select;

  @override
  State<CardDateSelectWidget> createState() => _CardDateSelectWidgetState();
}

class _CardDateSelectWidgetState extends State<CardDateSelectWidget> {


   @override
   Widget build(BuildContext context) {
       return SizedBox(
         width: MediaQuery.sizeOf(context).width 
         * 0.13,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 8.0),
               child: Text(widget.day,style: TextStyle(fontSize: MediaQuery.sizeOf(context).width *0.06, color:widget.select?Colors.white:Color.fromARGB(255, 180, 173, 173)),),
             ),
             Container(
               color:widget.select? const  Color.fromARGB(255, 180, 173, 173):const Color.fromARGB(0, 0, 150, 135),
               height: MediaQuery.sizeOf(context).height * 0.003,
               width: MediaQuery.sizeOf(context).width ,
       
             )
           ],
         ));
  }
}