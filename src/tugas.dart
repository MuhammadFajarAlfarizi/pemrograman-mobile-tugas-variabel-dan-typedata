import 'dart:io';
void main() {
  print("Hitung Gaji");
  print("Masukkan nama: ");
  String nama = stdin.readLineSync()!;
  
  print("Masukkan jam kerja: ");
  int jam = int.parse(stdin.readLineSync()!);

  print("Masukkan upah per jam: ");
  double upah = double.parse(stdin.readLineSync()!);

  print("Status tetap? (y/n): ");
  String status = stdin.readLineSync()!;
  bool tetap = status == "y";

  double gaji = jam * upah;
  double potongan;
  if (tetap) {
    potongan = gaji * 0.1;
  } else {
    potongan = gaji * 0.05;
  }
  double bersih = gaji - potongan;

  print("Nama: $nama");
  print("Gaji kotor: $gaji");
  print("Potongan: $potongan");
  print("Gaji bersih: $bersih");
}