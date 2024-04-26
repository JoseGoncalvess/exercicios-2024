import 'package:flutter/material.dart';

class PersonProfileWidget extends StatefulWidget {

  const PersonProfileWidget({ super.key });

  @override
  State<PersonProfileWidget> createState() => _PersonProfileWidgetState();
}

class _PersonProfileWidgetState extends State<PersonProfileWidget> {

   @override
   Widget build(BuildContext context) {
       return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("Palestrante",style: TextStyle(fontWeight: FontWeight.w700, fontSize: MediaQuery.of(context).size.width * 0.05),),
                    )),
                  ListTile(
                    leading:  Container(
                      width: MediaQuery.of(context).size.width * 0.16,
                    height: MediaQuery.of(context).size.height * 0.16,
                      child: CircleAvatar( backgroundImage:  NetworkImage('https://images.mubicdn.net/images/cast_member/27037/cache-7903-1427473662/image-w856.jpg?size=800x',),)),
                    title: Text("Stephen William Hawking",style: TextStyle(fontWeight: FontWeight.w500),),
                    subtitle: Text("Universsidade de Coinbra",style: TextStyle(color: Colors.grey),),
                    

                    
                  )
                ],
              ),
            );
  }
}