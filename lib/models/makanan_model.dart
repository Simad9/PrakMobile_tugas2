class MakananModel {
  String nama;
  double harga;
  String image;

  MakananModel({required this.nama, required this.harga, required this.image});

  static List<MakananModel> makanan = [
    MakananModel(
      nama: 'Indomie Goreng',
      harga: 5000,
      image:
          'https://down-id.img.susercontent.com/file/id-11134207-7r98s-lwn7mskqkid90e',
    ),
    MakananModel(
      nama: 'Indomie Hot & Spicy',
      harga: 6000,
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxNx31PsDdsHkxwsK6d7TbPN2DIPNK9STwUA&s',
    ),
    MakananModel(
      nama: 'Indomie Rendang',
      harga: 5000,
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqR7uSzImgdPVSPmX7zqUsJKa6H-NWIxqvyg&s',
    ),
    MakananModel(
      nama: 'Indomie Sate',
      harga: 6000,
      image:
          'https://down-id.img.susercontent.com/file/sg-11134201-23010-kc7zmdonctmv1d',
    ),
  ];
}
