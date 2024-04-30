import 'package:chuva_dart/services/repository/models/people_models.dart';
import 'package:flutter/material.dart';

class PersonProfileWidget extends StatefulWidget {
  const PersonProfileWidget({super.key, required this.press, required this.peoples});
  final Function press;
  final List<PeopleModels> peoples;

  @override
  State<PersonProfileWidget> createState() => _PersonProfileWidgetState();
}

class _PersonProfileWidgetState extends State<PersonProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Wrap(
         children:widget.peoples.map((p) => ListTile(
              onTap: () => widget.press(),
              leading: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.16,
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      p.picture,
                    ),
                  )),
              title: Text(
                p.name,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                p.institution,
                style: TextStyle(color: Colors.grey),
              ),
            )).toList(),
        
      ),
    );
  }
}
