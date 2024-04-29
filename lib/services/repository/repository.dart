import 'dart:convert';
import 'package:chuva_dart/services/repository/models/data_models.dart';
import 'package:flutter/services.dart';

class Repository {
  Future<List<DataModels>> readJson() async {
    final String response =
        await rootBundle.loadString('assets/activities.json');
    final String response2 =
        await rootBundle.loadString('assets/activities-1.json');

    return [ DataModels.fromJson(json.decode(response)),DataModels.fromJson(json.decode(response2))];
  }

  Future<DataModels> loaddata() async{
    List<DataModels> listaData = await readJson();
    DataModels dataBase = listaData[0];
    List<int> idnumber =[];

      for (var ev in dataBase.data) {
        idnumber.add(ev.id);
      }
      for (var e in listaData[1].data) {
        if (!idnumber.contains(e.id)) {
          dataBase.data.add(e);
        }
      }
      dataBase.count = dataBase.data.length;
      return dataBase;
  }
  
}
