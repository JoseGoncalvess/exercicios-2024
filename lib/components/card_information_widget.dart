import 'package:flutter/material.dart';

class CardInformationWidget extends StatelessWidget {
  const CardInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Nenheum Evento carregado!",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.warning_rounded,
            color: Theme.of(context).primaryColor,
            size: MediaQuery.of(context).size.height * 0.1,
          ),
          const Text("Selecioen uma data ou veja todos os evendo disponiveis",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
