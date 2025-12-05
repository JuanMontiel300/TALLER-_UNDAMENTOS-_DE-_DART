void main() {
  double montoHipoteca = 800000;
  double inversionPropia;
  double banco;

  if (montoHipoteca < 1000000) {
    inversionPropia = montoHipoteca * 0.50;
    double socio = montoHipoteca * 0.50;
    banco = 0;
    print("El Propietario: $inversionPropia");
    print(" El Socio: $socio");
    print("Banco: $banco");
  } else {
    banco = montoHipoteca;
    print("El Banco presta: $banco");
  }
}
