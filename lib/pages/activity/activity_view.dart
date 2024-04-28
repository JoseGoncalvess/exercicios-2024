import 'package:chuva_dart/pages/activity/activity_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../components/custom_app_bar_widget.dart';
import '../../components/person_profile_widget.dart';
import 'widget/card_info_activity.dart';
import 'widget/custom_buttom_favor.dart';

class ActivityView extends ActivityViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarWidget(
          press: () => context.push('/'),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
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
              widget.isActivity
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.07,
                      color: Colors.amber,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.calendar_month,
                              color: Colors.white,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'Essa atividadefaz parte de "Vida alenda a terra : Uma pesectiva atronomica"',
                              textAlign: TextAlign.left,
                              style: TextStyle(inherit: true),
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(),
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
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: const Text(
                    'he standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
                    style: TextStyle(fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              PersonProfileWidget(
                press: () => context
                    .push('/activity/${widget.isActivity}/persondetatils'),
              )
            ],
          ),
        ));
  }
}
