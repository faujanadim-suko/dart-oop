//dalah cara menyusun program menggunakan "objek". Objek ini ibarat benda di dunia nyata, seperti mobil, yang memiliki data (warna, merek) dan perilaku (berjalan, mengerem).

// Class (Kelas): Cetak biru atau blueprint untuk membuat objek. Kelas mendefinisikan properti dan fungsi dasar yang akan dimiliki oleh objek.Object
//(Objek): Hasil cetakan nyata (instance) dari sebuah kelas.
void main() {
  //ini objek
  final mobil = MobilKu(); //membuat objek dari class MobilKu
  var mobil1 = MobilKu();
  MobilKu mobil2 = MobilKu();

  //memanggil objek
  print(mobil);
  print(mobil1);
  print(mobil2);
}

//ini class
class MobilKu {}
