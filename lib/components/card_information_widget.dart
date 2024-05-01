import 'package:flutter/material.dart';

class CardInformationWidget extends StatelessWidget {
  const CardInformationWidget({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            text1,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.warning_rounded,
            color: Theme.of(context).primaryColor,
            size: MediaQuery.of(context).size.height * 0.1,
          ),
           Text(text2,
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
