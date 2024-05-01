import 'package:chuva_dart/components/card_information_widget.dart';
import 'package:chuva_dart/components/custom_app_bar_widget.dart';
import 'package:chuva_dart/pages/calendar/widgets/list_events_widget.dart';
import 'package:chuva_dart/pages/save%20events/save_events_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class SaveEventsView extends SaveEventsViewmodel {
  bool state = false;
  @override
  void initState() {
    super.initState();
    loadEvents().then((value) =>
     setState(() {
      state = true;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(press: () => context.pop()),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ValueListenableBuilder(
          valueListenable: eventos,
          builder: (context, value, child) => !state
              ? const CardInformationWidget(
                  text1: "Nenheum Evento carregado!",
                  text2: "Experimente salvar alguam Atividade")
              : Expanded(
                child: ListEventsWidget(
                  idSave: [],
                  issaved: true,
                        onTap: (isActivity, event) {}, listev: value)
              ),
        ),
      ),
    );
  }
}
