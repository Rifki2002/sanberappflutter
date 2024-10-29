//import 'dart:io';

// //Soal Nomor 1
// void main() {
//   stdout.write("Apakah Anda mau menginstall aplikasi? (Y/T): ");
//   String? input = stdin.readLineSync();

//   String message = (input == 'Y' || input == 'y')
//       ? "Anda akan menginstall aplikasi dart"
//       : (input == 'T' || input == 't')
//           ? "Aborted"
//           : "Input tidak valid";

//   print(message);
// }

//Soal Nomor 2

// void main() {
//   stdout.write("Masukkan nama: ");
//   String? nama = stdin.readLineSync();
//   stdout.write("Masukkan peran (Penyihir, Guard, Werewolf): ");
//   String? peran = stdin.readLineSync();
//   if (nama == null || nama.isEmpty) {
//     print("Nama harus diisi!");
//   } else if (peran == null || peran.isEmpty) {
//     print("Halo $nama, Pilih peranmu untuk memulai game!");
//   } else if (peran.toLowerCase() == "penyihir") {
//     print("Selamat datang di Dunia Werewolf, $nama");
//     print(
//         "Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
//   } else if (peran.toLowerCase() == "guard") {
//     print("Selamat datang di Dunia Werewolf, $nama");
//     print(
//         "Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
//   } else if (peran.toLowerCase() == "werewolf") {
//     print("Selamat datang di Dunia Werewolf, $nama");
//     print("Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!");
//   } else {
//     print("Terjadi Kesalahan dalam memulai");
//   }
// }

//Soal Nomor 3

// void main() {
//   stdout.write("Masukkan hari : ");
//   String? hari = stdin.readLineSync()?.toLowerCase();
//   switch (hari) {
//     case 'senin':
//       print(
//           "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
//       break;
//     case 'selasa':
//       print(
//           "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
//       break;
//     case 'rabu':
//       print(
//           "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
//       break;
//     case 'kamis':
//       print(
//           "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
//       break;
//     case 'jumat':
//       print("Hidup tak selamanya tentang pacar.");
//       break;
//     case 'sabtu':
//       print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
//       break;
//     case 'minggu':
//       print(
//           "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
//       break;
//     default:
//       print(
//           "Hari yang dimasukkan tidak valid. Silakan masukkan hari yang benar.");
//   }
// }

//Soal Nomor 4
void main() {
  var tanggal = 10;
  var bulan = 2;
  var tahun = 2020;

  String namaBulan;
  switch (bulan) {
    case 1:
      namaBulan = 'Januari';
      break;
    case 2:
      namaBulan = 'Februari';
      break;
    case 3:
      namaBulan = 'Maret';
      break;
    case 4:
      namaBulan = 'April';
      break;
    case 5:
      namaBulan = 'Mei';
      break;
    case 6:
      namaBulan = 'Juni';
      break;
    case 7:
      namaBulan = 'Juli';
      break;
    case 8:
      namaBulan = 'Agustus';
      break;
    case 9:
      namaBulan = 'September';
      break;
    case 10:
      namaBulan = 'Oktober';
      break;
    case 11:
      namaBulan = 'November';
      break;
    case 12:
      namaBulan = 'Desember';
      break;
    default:
      namaBulan = 'Bulan tidak valid';
  }

  if (namaBulan != 'Bulan tidak valid' &&
      tanggal > 0 &&
      tanggal <= 31 &&
      tahun >= 1900 &&
      tahun <= 2200) {
    print('$tanggal $namaBulan $tahun');
  } else {
    print("Input tanggal, bulan, atau tahun tidak valid");
  }
}
