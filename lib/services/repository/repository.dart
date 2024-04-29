import 'dart:convert';
import 'package:chuva_dart/services/repository/models/data_models.dart';
import 'package:flutter/services.dart';

class Repository {
  Future<DataModels> readJson() async {
    final String response =
        await rootBundle.loadString('assets/activities.json');
    final data = await json.decode(response);
    return DataModels.fromJson(data);
  }
}
