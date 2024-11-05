import 'dart:async';

class Human {
  String name = "Nama Character One Piece";

  Future<void> getName() async {
    await Future.delayed(Duration(seconds: 3));
    name = "Rifki";
    print("Get Data [Done]");
  }
}

void main(List<String> args) async {
  var h = Human();
  print("Luffy");
  print("Zorro");
  print("Killer");
  print("Nami");
  print(h.name);
  h.getName();
  print(h.name);

  await h.getName();
  print("name 3: ${h.name}");
}
