import 'package:flutter/material.dart';

class CustomDetailsPerson extends StatelessWidget {

  const CustomDetailsPerson({ super.key });

   @override
   Widget build(BuildContext context) {
       return Padding(
         padding: const EdgeInsets.symmetric(vertical: 7.0),
         child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.16,
            child: Row(
              children: [
               const  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage('https://images.mubicdn.net/images/cast_member/27037/cache-7903-1427473662/image-w856.jpg?size=800x')
                  ),
                ),
                Container(
                  width:  MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height*0.14, 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Stephen William Hawking",textAlign: TextAlign.left, style: TextStyle(letterSpacing: 0.01, fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width *0.06),),
                        Text("Universsidade de Coinbra",style: TextStyle(fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width *0.05, letterSpacing: 0.1),)
                      ],
         ),              )
              ],
            ),
                ),
       );
  }
}