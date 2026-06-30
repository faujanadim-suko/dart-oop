void main(List<String> orgs) {
  Mobil mobil = Mobil();
  Motor motor = Motor();

  motor.brand = "honda";
  mobil.brand = "toyota";

  print(motor.brand);
  print(mobil.brand);

  // Saat dipanggil, fungsi yang jalan adalah fungsi hasil modifikasi si anak,
  // bukan lagi fungsi asli dari bapaknya.
  mobil.road(); // Output: brututututut...... (Suara khas Mobil)
  motor.road(); // Output: pretetetetet..... (Suara khas Motor)
}

// === CLASS BAPAK (PARENT CLASS) ===
class Kendaraan {
  String brand = "unknow";
  String? warna;
  int roda = 2;

  // Ini fungsi awal dari bapak (bunyi standar kendaraan umum)
  void road() {
    print("brebet brebet tet tet tet....");
  }
}

// === CLASS ANAK 1 (SUBCLASS) ===
class Mobil extends Kendaraan {
  // @override artinya: "Saya pinjam fungsi bapak, tapi isinya saya ganti pake gaya Mobil!"
  @override
  void road() {
    print("brututututut......"); // Suara bapak ("brebet...") sukses diganti
  }
}

// === CLASS ANAK 2 (SUBCLASS) ===
class Motor extends Kendaraan {
  // @override artinya: "Saya juga mau ganti bunyinya pake suara khas Motor saya sendiri!"
  @override
  void road() {
    print("pretetetetet....."); // Suara bapak ("brebet...") sukses diganti
  }
}
