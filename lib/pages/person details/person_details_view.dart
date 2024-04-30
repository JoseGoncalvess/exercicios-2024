import 'package:chuva_dart/services/helpers/its_time.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../components/custom_app_bar_widget.dart';
import '../calendar/widgets/event_card_widget.dart';
import 'person_details_view_model.dart';
import 'widgets/custom_details_person.dart';

class PersonDetailsView extends PersonDetailsViewModel {@override
  @override
  void initState() {
    super.initState();
    loadEventsforDay(day: widget.start.split('/').first, person: widget.people);
  }
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
             CustomDetailsPerson(name: widget.people.name,picture:widget.people.picture, institution: widget.people.institution,),
            widget.people.bio.ptBr.isEmpty?const SizedBox(): Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "BIO",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                     Flexible(
                       child: Text(
                        widget.people.bio.ptBr,
                        style: const TextStyle(fontWeight: FontWeight.w500, ),
                        textAlign: TextAlign.left,
                                           ),
                     ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height:widget.people.bio.ptBr.isEmpty? MediaQuery.of(context).size.height * 0.6:MediaQuery.of(context).size.height * 0.47,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      child: Text(
                        "Atividades",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width * 0.05),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.07),
                      child: Text(
                        "${ItsTime().resumday(widget.dayname)},${widget.start}",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width * 0.05),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height:widget.people.bio.ptBr.isEmpty? MediaQuery.of(context).size.height * 0.45:MediaQuery.of(context).size.height * 0.398,
                      color: Colors.white,
                      child:
                       ValueListenableBuilder(
                        valueListenable: eventesPerosn,
                        builder: (context, value, child) =>  ListView.builder(
                          padding:  const EdgeInsets.only(top: 7),
                          itemCount:value.length,
                          itemBuilder: (context, index) {
                            bool type =  value[index].type.title.ptBr!.contains("Apresenta\u00e7\u00e3o de P\u00f4ster")?true:false;

                            return GestureDetector(
                            onTap: () => context.push("/activity/$type", extra:value[index] ),
                            child: EventCardWidget(
                              colorsBand: value[index].category.color?? '#C7B884',
                              eventName: value[index].type.title.ptBr!,
                              end: value[index].end,
                              start: value[index].end,
                              people: value[index].people,
                              title: value[index].title.ptBr!,
                              
                            ),
                          );
                          }
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
