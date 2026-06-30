void main(List<String> orgs) {
  //memanggil named constructor
  Car withBrand = Car.withBrand("scoopy");
  Car withColor = Car.withColor("merah");
  print(withColor.color); //memanggil named constructor dengan parameter color
  print(withBrand.brand);
  // print(carr.road());
}

class Car {
  String brand = "unknown";
  final int wheels = 4;
  String? color; //nullable property

  //named parameter
  //named adalah constructor yang memiliki nama khusus, digunakan untuk memberikan cara alternatif dalam membuat objek dari class.
  Car.withBrand(this.brand);
  Car.withColor(this.color);

  String road() {
    // print("mobil berjaln menggunakan roda $wheels");
    return "mobil merek $brand berwarna $color, berjaln menggunakan roda $wheels sampai kecelakaan";
  }
}
