import 'dart:math';

void main() {
  int P = 3;
  int Q = 3;

  int expresion = pow(P, 3).toInt() + pow(Q, 4).toInt() - 2 * pow(P, 2).toInt();

  if (expresion > 680) {
    print("La expresión es verdadera. P = $P, Q = $Q");
  } else {
    print("La expresión NO se cumple. Resultado = $expresion");
  }
}
