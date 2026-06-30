void main(List<String> orgs) {
  // 1. MEMBUAT OBJEK & MODIFIKASI DENGAN CASCADE NOTATION (..)
  // Cascade notation memungkinkan kita mengeksekusi serangkaian operasi
  // pada objek yang sama tanpa harus menulis ulang nama variabelnya.
  Saya saya = Saya()
    // Mengubah/menambah nilai properti 'rambut' menjadi "ijo"
    ..rambut = "ijo"
    ..baju = "ungu"
    ..celana = "kuning"
    ..dalaman = "merah"
    ..sepatu = "merah"
    ..badut(); //memanggi function dan mengakhiri objek cascade notasion menggunakan (;)

  // 2. MENAMPILKAN HASIL MODIFIKASI
  // Setelah dimodifikasi lewat cascade di atas, nilai properti objek 'saya' telah berubah.
  print(saya.rambut); // Output: ijo
  print(saya.baju); // Output: ungu
  print(saya.celana); // Output: kuning
  print(saya.dalaman); // Output: merah
  print(saya.sepatu); // Output: merah
  print(saya.badut()); //output funtion
}

// 3. BLUEPRINT / CLASS UTAMA
class Saya {
  // Properti (Instance Variables) dengan nilai default awal
  String? rambut;
  String? baju;
  String? celana;
  String? dalaman;
  String? sepatu;

  String badut() {
    return "saya berambut $rambut dan menggunakan baju $baju, celana $celana, dalaman $dalaman, sepatu $sepatu. saya badut berkualitasss";
  }
}
