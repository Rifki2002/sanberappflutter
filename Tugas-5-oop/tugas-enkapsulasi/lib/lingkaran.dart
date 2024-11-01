// ignore_for_file: avoid_return_types_on_setters

class Lingkaran {
  late double _r;
  Lingkaran(double r) {
    this.r = r;
  }

  void set r(double value) {
    if (value < 0) {
      _r = value * -1;
    } else {
      _r = value;
    }
  }

  double get jariJari => _r;
  double get luas => 3.14 * _r * _r;
}
