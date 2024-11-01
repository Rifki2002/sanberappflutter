class Titan {
  int _powerPoint = 0;
  set powerPoint(int value) {
    _powerPoint = value < 5 ? 5 : value;
  }

  int get powerPoint => _powerPoint;
}
