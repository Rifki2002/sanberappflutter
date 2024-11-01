//Contoh Kode prosedural luasSegigita yang harus di ubah menjadi Class LuasLingkaran

// void main(List<String> args) {
//   double setengah = 0.5;
//   double alas = 20.0;
//   double tinggi = 30.0;

//   var luasSegitiga = setengah * alas * tinggi;
//   print(luasSegitiga);
// }

void main(List<String> args) {
  Lingkaran lingkaran = Lingkaran(10);
  print("Hasil Luas Lingkaran = ${lingkaran.luasLingkaran()}");
}

class Lingkaran {
  late double r;

  Lingkaran(this.r);

  double luasLingkaran() {
    double phi = 3.14;
    return phi * r * r;
  }
}
