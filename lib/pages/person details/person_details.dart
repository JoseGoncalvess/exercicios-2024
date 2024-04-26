import 'package:chuva_dart/pages/person%20details/widgets/custom_details_person.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/custom_app_bar_widget.dart';
import '../calendar/widgets/event_card_widget.dart';

class PersonDetails extends StatefulWidget {

  const PersonDetails({ super.key });

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
            children: [
              CustomAppBarWidget(),
              CustomDetailsPerson (),
                          Container(
              alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Padding(
                  padding:  EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BIO", style: TextStyle(fontWeight: FontWeight.w700),),
                      const Text('<p>he standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<p>', style: TextStyle(fontWeight: FontWeight.w500),textAlign: TextAlign.left,),
                    ],
                  ),
                ),

            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.432,
                child: 
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
                      child: Text("Atividades", style:TextStyle(fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width * 0.05),textAlign: TextAlign.left,),
                    ),
                     Padding(
                       padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07),
                       child: Text("dom.,26/11/2023",style:TextStyle(fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width * 0.05),textAlign: TextAlign.left,),
                     ),
                    SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.3601,
                        color: Colors.white,
                        child: ListView.builder(
                          itemCount:5,
                          itemBuilder: (context, index) => const EventCardWidget() , 
          ),        
                      ),
                    )
                  ],
                ),

            ),
           
              
            ],
          ),
         ),
       );
  }
}