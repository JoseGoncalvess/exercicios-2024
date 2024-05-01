
import 'package:flutter/material.dart';

class CustomButtomFavor extends StatefulWidget {
  const CustomButtomFavor({super.key, required this.onTap, required this.isSaved});
  final Function() onTap;
  final bool isSaved;

  @override
  State<CustomButtomFavor> createState() => _CustomButtomFavorState();
}

class _CustomButtomFavorState extends State<CustomButtomFavor> {
  late IconData icon ;
  late String textButtom = "Adicionar a sua Agenda";
  @override
  void initState() {
    super.initState();
   icon = widget.isSaved? Icons.star_border:Icons.star;
   textButtom = widget.isSaved? "Remover a sua Agenda":"Adicionar a sua Agenda";
  }


  

  void favoractivity() {
    if (icon == Icons.star) {
      setState(() {
        icon = Icons.refresh;
        textButtom = "Processadno";
      });
      Future.delayed(const Duration(seconds: 2)).then((value) => setState(() {
            icon = Icons.star_border;
            textButtom = "Remover a sua Agenda";
          }));
    } else {
      setState(() {
        icon = Icons.refresh;
        textButtom = "Processadno";
      });
      Future.delayed(const Duration(seconds: 2)).then((value) => setState(() {
            icon = Icons.star;
            textButtom = "Adicionar a sua Agenda";
          }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.93,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(icon == Icons.refresh
                  ? Colors.grey
                  : Theme.of(context).primaryColor),
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6))))),
          onPressed: () {
            favoractivity();
              widget.onTap();
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  textButtom,
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ],
          )),
    );
  }
}
