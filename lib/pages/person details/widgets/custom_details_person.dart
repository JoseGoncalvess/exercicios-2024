import 'package:chuva_dart/services/helpers/geter_sigla.dart';
import 'package:flutter/material.dart';

class CustomDetailsPerson extends StatelessWidget {
  final String picture;
  final String institution;
  final String name;


  const CustomDetailsPerson({ super.key, required this.picture, required this.institution, required this.name });

   @override
   Widget build(BuildContext context) {
       return Padding(
         padding: const EdgeInsets.symmetric(vertical: 7.0),
         child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.16,
            child: Row(
              children: [
                 Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.0),
                  child:picture.isEmpty?CircleAvatar(
                    radius: 60,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(GeterSigla().geterSiglas(name), style: TextStyle(fontSize: MediaQuery.of(context).size.width *0.15, color: Colors.white),),
                  ): CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(picture)
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
                        Text(name,textAlign: TextAlign.left, style: TextStyle(letterSpacing: 0.01, fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width *0.06),),
                        Text(institution,style: TextStyle(fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width *0.04, letterSpacing: 0.1),)
                      ],
         ),              )
              ],
            ),
                ),
       );
  }
}