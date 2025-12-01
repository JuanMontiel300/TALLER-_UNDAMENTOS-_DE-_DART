void main() {
  int edad = 20;
  String sexo = "H";
  double hemoglobina = 13;

  bool anemia;

  if (edad <= 1 && hemoglobina >= 13 && hemoglobina <= 26) {
    anemia = false;
  } else if (edad <= 6 && hemoglobina >= 10 && hemoglobina <= 18) {
    anemia = false;
  } else if (edad <= 12 && hemoglobina >= 11 && hemoglobina <= 15) {
    anemia = false;
  } else if (edad <= 60 && hemoglobina >= 11.5 && hemoglobina <= 15) {
    anemia = false;
  } else if (edad <= 120 && hemoglobina >= 12.6 && hemoglobina <= 15.5) {
    anemia = false;
  } else if (edad <= 180 && hemoglobina >= 13 && hemoglobina <= 15.5) {
    anemia = false;
  } else if (sexo == "M" && hemoglobina >= 12 && hemoglobina <= 16) {
    anemia = false;
  } else if (sexo == "H" && hemoglobina >= 14 && hemoglobina <= 18) {
    anemia = false;
  } else {
    anemia = true;
  }

  print(anemia ? "Tiene anemia" : "No tiene anemia");
}
