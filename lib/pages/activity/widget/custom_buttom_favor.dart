import 'package:flutter/material.dart';

class CustomButtomFavor extends StatefulWidget {

  const CustomButtomFavor({ super.key });

  @override
  State<CustomButtomFavor> createState() => _CustomButtomFavorState();
}

class _CustomButtomFavorState extends State<CustomButtomFavor> {
  IconData icon = Icons.star;
  String textButtom = "Adicionar a sua Agenda";

  void favoractivity(){
if (icon == Icons.star) {
      setState(() {
      icon = Icons.refresh;
      textButtom = "Processadno";
    });
    Future.delayed(Duration(seconds: 2)).then((value) => setState(() {
      icon = Icons.star_border;
      textButtom = "Remover a sua Agenda";
    }));
  
      }else{

    setState(() {
      icon = Icons.refresh;
      textButtom = "Processadno";
    });
    Future.delayed(Duration(seconds: 2)).then((value) => setState(() {
      icon = Icons.star;
      textButtom = "Adicionar a sua Agenda";
    }));

      }
  }

   @override
   Widget build(BuildContext context) {
       return SizedBox(
              width:MediaQuery.of(context).size.width * 0.93,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton( style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                 icon == Icons.refresh ? Colors.grey : Theme.of(context).primaryColor
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6))
                ))
              ),
                onPressed: (){
                  favoractivity();
                }, child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(textButtom, style: const TextStyle(color: Colors.white),),
                  )
                ],
              )),
            );
  }
}