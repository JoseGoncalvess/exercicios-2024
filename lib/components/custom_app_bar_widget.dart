import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {

  const CustomAppBarWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor
              ),
              height: MediaQuery.of(context).size.height * 0.14,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(color: Colors.white,
                      size: MediaQuery.of(context).size.width* 0.08,
                      Icons.arrow_back_ios_new_outlined)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: Text('Chuva 💜 Flutter',style: TextStyle(
                              color: Colors.white,
                              fontSize:MediaQuery.of(context).size.width *0.05, fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
              ),
            );
  }
}