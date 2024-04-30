import 'package:chuva_dart/pages/activity/activity_view_model.dart';
import 'package:chuva_dart/services/helpers/html_convert.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../components/custom_app_bar_widget.dart';
import '../../components/person_profile_widget.dart';
import 'widget/card_info_activity.dart';
import 'widget/custom_buttom_favor.dart';

class ActivityView extends ActivityViewModel {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarWidget(
          press: () => context.pop(),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                decoration:  BoxDecoration(color:fromCssColor(widget.evento.category.color??"#C7B884")),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:  const EdgeInsets.only(left: 10.0),
                  child: Text(
                    widget.evento.category.title.ptBr!,
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
                      color: Theme.of(context).primaryColor,
                      child:   Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.calendar_month,
                              color: Colors.white,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'Essa Atividade é parte de "${widget.evento.title.ptBr}" ',
                              textAlign: TextAlign.left,
                              style: const TextStyle(inherit: true, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.evento.title.ptBr!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      fontWeight: FontWeight.w700,
                    )),
              ),
               CardInfoActivity(event: widget.evento,),
              const CustomButtomFavor(),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child:  Text(widget.evento.description.ptBr==null? "":
                    HtmlConvert().converttoString(widget.evento.description.ptBr!)  ,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
                        SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text( widget.evento.people.isEmpty?"":
                  "Palestrante",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.width * 0.05), 
                ),
              )),
              PersonProfileWidget(
                peoples: widget.evento.people,
                ontap:( people) => context
                    .push('/activity/${widget.isActivity}/persondetatils', extra:[people, DateFormat.EEEE("pt_BR").format(widget.evento.start), DateFormat('dd/MM/yyyy').format(widget.evento.start)])
              )
            ],
          ),
        ));
  }
}
