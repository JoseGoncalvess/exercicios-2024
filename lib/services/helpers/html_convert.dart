
import 'package:html/parser.dart';
class HtmlConvert {
  String converttoString(String htmlString){
    var documento = parse(htmlString);
    return documento.querySelector("p")!.innerHtml;
  }
}