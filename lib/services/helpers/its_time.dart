

class ItsTime {


String fatchHour(int horas){
if (horas < 10) {
  return "0$horas";
}
return horas.toString();
}

String fatchMinut(int minute){
if (minute == 0) {
  return "00";
}else if(minute < 10)
  return "0$minute";
return minute.toString();
}

 String timeforEvent(DateTime star,DateTime end){
      String hourStart =fatchHour(star.hour); 
      String hourEnd = fatchHour(end.hour); 
      String minuteStart = fatchMinut(star.minute);
      String minuteEnd = fatchMinut(end.minute);


    return " de $hourStart:${minuteStart} até ${hourEnd}:${minuteEnd}  ";
  }





}