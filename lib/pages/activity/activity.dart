import 'package:chuva_dart/pages/activity/widget/card_info_activity.dart';
import 'package:chuva_dart/pages/activity/widget/custom_buttom_favor.dart';
import 'package:chuva_dart/components/custom_app_bar_widget.dart';
import 'package:chuva_dart/components/person_profile_widget.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          CustomAppBarWidget(),
          Container(
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(color: Colors.purple),
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Astrofisica e Cosmologia",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("A Física dos Buracos Negros Supermassivos",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  fontWeight: FontWeight.w700,
                )),
          ),
          const CardInfoActivity(),
          const CustomButtomFavor(),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: const Text(
                'he standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
                style: TextStyle(fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          PersonProfileWidget()
        ],
      ),
    ));
  }
}
