void main(List<String> orgs) {
  //memanggil constructor dengan parameter
  Car carr = Car("hoda", "kelabu");
  print(carr.brand);
  print(carr.color);
  //print(carr.road());
}

class Car {
  String brand = "unknown";
  final int wheels = 4;
  String? color; //nullable property

  //constructor adalah method khusus yang digunakan untuk menginisialisasi objek dari sebuah class.
  //Constructor memiliki nama yang sama dengan nama class dan tidak memiliki tipe kembalian (return type).
  //Constructor dapat memiliki parameter untuk menerima nilai saat objek dibuat, sehingga properti dari objek dapat diatur sesuai kebutuhan.
  Car(String paramBrand, String paramColor) {
    brand = paramBrand;
    color = paramColor;
  }

  //method biasa
  String road() {
    // print("mobil berjaln menggunakan roda $wheels");
    return "mobil merek $brand berwarna $color, berjaln menggunakan roda $wheels sampai kecelakaan";
  }
}
