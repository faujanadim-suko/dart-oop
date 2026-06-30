// Property Overriding (atau Field Overriding) itu prinsipnya sama persis dengan Method Overriding.
// Bahasa gampangnya adalah "Anak mengubah nilai bawaan atau tipe data variabel milik Bapaknya".
void main(List<String> orgs) {
  Mobil mobil = Mobil();

  // PEMBUKTIAN: saat dicetak, nilai yang keluar adalah nilai hasil rombakan si anak (4),
  // bukan lagi nilai default bawaan dari bapaknya (2).
  print(mobil.roda); // Output: 4
}

// === CLASS BAPAK (PARENT CLASS) ===
class Kendaraan {
  String brand = "unknow";
  String? warna;
  int roda = 2; // Bapak menetapkan standar awal roda = 2

  void road() {
    print("brebet brebet tet tet tet....");
  }
}

// === CLASS ANAK 1 (SUBCLASS) ===
class Mobil extends Kendaraan {
  // @override artinya: "Saya ganti nilai awal variabel 'roda' milik Bapak menjadi 4!"
  // Mulai sekarang, semua Mobil yang dibuat otomatis langsung punya 4 roda.
  @override
  int roda = 4;
}

// === CLASS ANAK 2 (SUBCLASS) ===
// Karena tidak melakukan @override, Motor akan pasrah dan langsung memakai
// nilai 'roda = 2' yang diwariskan oleh bapaknya.
class Motor extends Kendaraan {}
