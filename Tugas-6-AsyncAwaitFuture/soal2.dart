import 'dart:async';

Future<void> main(List<String> args) {
  print("Life");

  Future.delayed(Duration(seconds: 4), () {
    print("Never Flat");
  });

  Future.delayed(Duration(seconds: 2), () {
    print("Is");
  });

  return Future.value();
}
