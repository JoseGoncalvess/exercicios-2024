
import 'package:shared_preferences/shared_preferences.dart';

class Storage {

  Future<List<String>> loadEvents() async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
   return pref.getStringList(KEY_LIST_EVENTS)?? [];
  }


  Future<void> saveEvents(String evento) async {
      final SharedPreferences pref = await SharedPreferences.getInstance();
      List<String>  eventos = await loadEvents();
      eventos.add(evento);
      pref.setStringList(KEY_LIST_EVENTS, eventos);

  }

}

const  KEY_LIST_EVENTS = "Events@";
