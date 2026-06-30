void main(List<String> orgs) {
  // 1. MEMBUAT OBJEK & MODIFIKASI DENGAN CASCADE NOTATION (..)
  // Cascade notation memungkinkan kita mengeksekusi serangkaian operasi
  // pada objek yang sama tanpa harus menulis ulang nama variabelnya.
  Saya saya = Saya()
    ..rambut =
        "ijo" // Mengubah nilai properti 'rambut'
    ..baju =
        "ungu" // Mengubah nilai properti 'baju'
    ..celana =
        "kuning" // Mengubah nilai properti 'celana'
    ..dalaman =
        "merah" // Mengubah nilai properti 'dalaman'
    ..sepatu =
        "merah" // Mengubah nilai properti 'sepatu'
    ..badut(); // Memanggil method/fungsi 'badut()' dan mengakhiri rangkaian cascade dengan tanda (;)

  // 3. MENAMPILKAN HASIL MODIFIKASI
  print(saya.rambut); // Output: ijo
  print(saya.baju); // Output: ungu
  print(saya.celana); // Output: kuning
  print(saya.dalaman); // Output: merah
  print(saya.sepatu); // Output: merah

  // Mencetak langsung hasil return string dari fungsi badut()
  print(
    saya.badut(),
  ); // Output: saya berambut ijo dan menggunakan baju ungu, celana kuning, dalaman merah, sepatu merah. saya badut berkualitasss
}

// 4. BLUEPRINT / CLASS UTAMA
class Saya {
  // Properti (Instance Variables) dengan nilai default awal
  String rambut = "ijo";
  String baju = "kuning";
  String celana = "biru";
  String dalaman = "merah";
  String sepatu = "merah";

  // Method/Fungsi yang mengembalikan nilai berupa String
  String badut() {
    return "saya berambut $rambut dan menggunakan baju $baju, celana $celana, dalaman $dalaman, sepatu $sepatu. saya badut berkualitasss";
  }
}
