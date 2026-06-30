//intheritance adalah proses class yang mewarisi dan class yang diwarisi
// proses membuat class baru menggunakan class yang sudah ada sebagai cetakan atau fondasi dasarnya
void main(List<String> orgs) {
  // Membuat objek/unit baru dari class anak
  Mobil mobil = Mobil();
  Motor motor = Motor();

  // Membuktikan bahwa class anak (Motor & Mobil) bisa memakai variabel 'brand'
  // yang aslinya milik class bapak (Kendaraan) tanpa perlu menulis ulang kodenya.
  motor.brand = "honda";
  mobil.brand = "toyota";

  print(motor.brand); // Output: honda
  print(mobil.brand); // Output: toyota
}

// === CLASS BAPAK (PARENT CLASS) ===
// Ini adalah class dasar atau cetakan utama yang punya sifat umum.
class Kendaraan {
  String brand = "unknow";
  String? warna;
  int roda = 2;
}

// === CLASS ANAK 1 (SUBCLASS) ===
// 'extends Kendaraan' artinya class Mobil meniru/mengambil semua isi dari class Kendaraan.
// Walaupun di dalam tanda { } kosong, Mobil otomatis sudah punya variabel brand, warna, dan roda.
class Mobil extends Kendaraan {}

// === CLASS ANAK 2 (SUBCLASS) ===
// Sama seperti mobil, class Motor juga warisan langsung dari class Kendaraan.
// Apa yang punya bapak, otomatis menjadi punya anak!
class Motor extends Kendaraan {}
