//keywor memanggil fungsi bapak
//Saat kita sudah telanjur mengubah (override) fungsi atau nilai dari Class Bapak, kadang si Anak tiba-tiba butuh untuk memanggil atau menjalankan kembali kode asli milik Bapaknya. Di sinilah kita pakai kata kunci
void main(List<String> orgs) {
  Mobil mobil = Mobil();
  Motor motor = Motor();
  Sepeda sepeda = Sepeda();

  // POIN UTAMA: Hasil output berbeda-beda karena setiap anak punya cara merespon warisan bapaknya.
  mobil.road(); // Output: brebet... (Gaya Mobil sendiri)
  motor.road(); // Output: berututut... (Gaya Motor sendiri)
  sepeda.road(); // Output: ohok... lalu stutut... (Gaya Bapak + Gaya Sepeda)
}

// ====================================================================
// POIN 1: INHERITANCE (Pewarisan Sifat)
// Kata kunci 'extends' membuat class Mobil, Motor, & Sepeda otomatis
// memiliki variabel 'brand, warna, roda' & fungsi 'road()' dari Kendaraan.
// ====================================================================
class Kendaraan {
  String brand = "unknow";
  String? warna;
  int roda = 2;
  void road() {
    print("ohok ohok bapak");
  }
}

// ====================================================================
// POIN 2: METHOD OVERRIDING (Membantah/Mengubah Total)
// Menggunakan '@override' untuk menghapus fungsi asli bapak
// dan menggantinya 100% dengan fungsi baru buatan anak sendiri.
// ====================================================================
class Mobil extends Kendaraan {
  @override
  void road() {
    print("brebet brebet tet tet tet....mobil");
  }
}

class Motor extends Kendaraan {
  @override
  void road() {
    print("berututututut motor");
  }
}

// ====================================================================
// POIN 3: SUPER KEYWORD (Memanggil Bapak + Menambahkan Sifat)
// Kata kunci 'super.road()' dipakai untuk menjalankan fungsi asli bapak dulu,
// baru kemudian menjalankan baris kode tambahan milik si anak di bawahnya.
// ====================================================================
class Sepeda extends Kendaraan {
  @override
  void road() {
    super.road(); // Panggil fungsi bapak dulu
    print("stututututut sepeda"); // Lanjut jalankan kode anak
  }
}
