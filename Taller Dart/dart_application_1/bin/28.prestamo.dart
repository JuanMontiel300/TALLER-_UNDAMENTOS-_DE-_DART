void main() {
  double monto = 600000;

  double invEmpresa;
  double prestamoBanco = 0;
  double creditoFabricante;
  double interes;

  if (monto > 500000) {
    invEmpresa = monto * 0.55;
    prestamoBanco = monto * 0.30;
    creditoFabricante = monto - invEmpresa - prestamoBanco;
  } else {
    invEmpresa = monto * 0.70;
    creditoFabricante = monto * 0.30;
  }

  interes = creditoFabricante * 0.20;

  print("Inversión de la empresa: ${invEmpresa.toStringAsFixed(2)}");
  print("Crédito al fabricante: ${creditoFabricante.toStringAsFixed(2)}");
  print("Intereses: ${interes.toStringAsFixed(2)}");

  if (prestamoBanco > 0) {
    print("Préstamo del banco: ${prestamoBanco.toStringAsFixed(2)}");
  }
}
