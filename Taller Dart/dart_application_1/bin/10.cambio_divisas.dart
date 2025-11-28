void main() {
  double chelines = 150;
  double pesetas = chelines * (956.871 / 100);
  print("Equivalente en pesetas: $pesetas");

  double dracmas = 200;
  double pesetasDracmas = dracmas * (88.607 / 100);
  double francosFranceses = pesetasDracmas / 20.110;
  print("Equivalente en francos franceses: $francosFranceses");

  double pesetasInput = 500;
  double dolares = pesetasInput / 122.499;
  print("Equivalente en dólares: $dolares");

  double liras = (pesetasInput / 9.289) * 100;
  print("Equivalente en liras italianas: $liras");
}
