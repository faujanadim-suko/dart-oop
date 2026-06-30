//Super Constructor itu bahasa gampangnya adalah "Anak yang numpang ngisi data ke dalam dompet Bapaknya" saat si anak baru lahir (dibuat objeknya).
//Ketika Class Bapak memiliki data yang harus diisi lewat Constructor, maka Class Anak wajib mengoper atau menyalurkan data tersebut ke atas menggunakan kata kunci super.
void main(List<String> orgs) {
  // Saat objek anak (Mobil & Motor) baru lahir, kita langsung titipkan data brand-nya
  Mobil mobil = Mobil("ambasador");
  Motor motor = Motor("ambasidir");

  mobil.road();
  motor.road();

  // PEMBUKTIAN: Data brand berhasil tersimpan di dalam variabel milik bapak!
  print(mobil.brand); // Output: ambasador
  print(motor.brand); // Output: ambasidir
}

// === CLASS BAPAK (PARENT CLASS) ===
class Kendaraan {
  String brand = "unknow";
  String? warna;
  int roda = 2;

  // Constructor Bapak: Pintu gerbang utama untuk memasukkan data 'brand'
  Kendaraan(this.brand);

  void road() {
    print("ohok ohok bapak");
  }
}

// === CLASS ANAK 1 (SUBCLASS) ===
class Mobil extends Kendaraan {
  // SUPER CONSTRUCTOR:
  // Mobil menerima kiriman paket 'brandMobil', lalu tanda ': super(brandMobil)'
  // bertindak seperti pipa yang menyalurkan paket itu ke Constructor Bapak di atas.
  Mobil(String brandMobil) : super(brandMobil);

  @override
  void road() {
    print("brebet brebet tet tet tet....mobil");
  }
}

// === CLASS ANAK 2 (SUBCLASS) ===
class Motor extends Kendaraan {
  // Logikanya sama: Menerima data 'branMotor' lalu langsung disetor ke atas via ': super'
  Motor(String branMotor) : super(branMotor);

  @override
  void road() {
    print("berututututut motor");
  }
}
