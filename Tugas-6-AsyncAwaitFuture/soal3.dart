import 'dart:async';

Future<void> main(List<String> args) async {
  print("Ready. Sing");

  await Future.delayed(Duration(seconds: 5), () {
    print("Pernahkah kau merasa,");
  });

  await Future.delayed(Duration(seconds: 5), () {
    print("Pernahkah kau merasa ...........,");
  });

  await Future.delayed(Duration(seconds: 5), () {
    print("Pernahkah kau merasa,");
  });

  await Future.delayed(Duration(seconds: 5), () {
    print("Hatimu hampa, pernahkah kau merasa hatimu kosong");
  });
}
