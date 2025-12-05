void main() {
  int dia = 15;
  int mes = 8;
  int anioNacimiento = 2000;
  int anioActual = 2025;

  String signo;

  if (mes == 8 && dia >= 24 || mes == 9 && dia <= 22) {
    signo = "Virgo";
  } else if (mes == 7 && dia >= 23 || mes == 8 && dia <= 23) {
    signo = "Leo";
  } else if (mes == 6 && dia >= 22 || mes == 7 && dia <= 22) {
    signo = "Cáncer";
  } else if (mes == 5 && dia >= 22 || mes == 6 && dia <= 21) {
    signo = "Géminis";
  } else if (mes == 4 && dia >= 21 || mes == 5 && dia <= 21) {
    signo = "Tauro";
  } else if (mes == 3 && dia >= 21 || mes == 4 && dia <= 20) {
    signo = "Aries";
  } else if (mes == 2 && dia >= 20 || mes == 3 && dia <= 20) {
    signo = "Piscis";
  } else if (mes == 1 && dia >= 21 || mes == 2 && dia <= 19) {
    signo = "Acuario";
  } else if (mes == 12 && dia >= 22 || mes == 1 && dia <= 20) {
    signo = "Capricornio";
  } else if (mes == 11 && dia >= 22 || mes == 12 && dia <= 21) {
    signo = "Sagitario";
  } else if (mes == 10 && dia >= 23 || mes == 11 && dia <= 21) {
    signo = "Escorpión";
  } else {
    signo = "Libra";
  }

  int edad = anioActual - anioNacimiento;

  print("Signo: $signo");
  print("Edad: $edad");
}
