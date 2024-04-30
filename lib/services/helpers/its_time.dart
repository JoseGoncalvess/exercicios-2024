

class ItsTime {


 String _fatchHour(int horas){
if (horas < 10) {
  return "0$horas";
}
return horas.toString();
}

String _fatchMinut(int minute){
if (minute == 0) {
  return "00";
}else if(minute < 10)
  return "0$minute";
return minute.toString();
}

 String timeforEvent(DateTime star,DateTime end){
      String hourStart =_fatchHour(star.hour); 
      String hourEnd = _fatchHour(end.hour); 
      String minuteStart = _fatchMinut(star.minute);
      String minuteEnd = _fatchMinut(end.minute);


    return " de $hourStart:${minuteStart} até ${hourEnd}:${minuteEnd}  ";
  }





}