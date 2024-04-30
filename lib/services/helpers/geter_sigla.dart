

class GeterSigla {
  geterSiglas(String nome){
    var text = nome.split(" ");
    String sigla = "${text[0].split('').first}${text[1].split('').first}";
    return sigla;
  }
}