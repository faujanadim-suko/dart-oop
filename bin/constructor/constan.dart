//constam constracktor itu merupakan class yang data nya tidak bisa di ubah
//dan harus menggunakan keyword const
void main(List<String> args) {
  // untuk membuat oobjeknya juga harus menggunakkan keyword const di belakang nya
  ImmutableCar immuMobil = const ImmutableCar(4, 2);
  ImmutableCar immuMobil2 = const ImmutableCar(4, 2);
  //keuntungan nya akan di hitung sebagi objek yang ama bila nilainya sama
  print(immuMobil == immuMobil2);
  print(immuMobil.roda);
  print(immuMobil.kursi);
  print(immuMobil2.roda);
  print(immuMobil2.kursi);
}

class ImmutableCar {
  final roda;
  final kursi;

  //keyword harus sebelum method
  const ImmutableCar(this.roda, this.kursi);
}
