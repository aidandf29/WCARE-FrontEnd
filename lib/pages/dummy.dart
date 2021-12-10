class Breed {
  final String imgUrl;
  final String jenis;
  final String umur;
  final String gender;
  final String telepon;

  const Breed({
    this.imgUrl,
    this.jenis,
    this.umur,
    this.gender,
    this.telepon,
  });
  static const List<Breed> generatedBreed = [
    Breed(
        imgUrl:
            'https://th.bing.com/th/id/OIP.xwPljN7zAmSu2EMphHN-qgHaHa?w=188&h=188&c=7&r=0&o=5&dpr=1.25&pid=1.7',
        jenis: 'Golden Retrifer',
        umur: 'age: 2 years',
        gender: 'gender: Male',
        telepon: 'call: 08515747760'),
    Breed(
        imgUrl:
            'https://th.bing.com/th/id/OIP.m6J9fotBuowg3y4GV-wQTAHaD0?w=341&h=179&c=7&r=0&o=5&dpr=1.25&pid=1.7',
        jenis: 'Siberian Husky',
        umur: 'age: 2 years',
        gender: 'gender: Male',
        telepon: 'call: 08515747760'),
    Breed(
        imgUrl:
            'https://th.bing.com/th/id/OIP.4yLsP8NYlp3ZIHSHQGbGZQHaFn?w=241&h=182&c=7&r=0&o=5&dpr=1.25&pid=1.7',
        jenis: 'Cihuahua',
        umur: 'age: 2 years',
        gender: 'gender: Male',
        telepon: 'call: 08515747760'),
    Breed(
        imgUrl:
            'https://th.bing.com/th/id/OIP.jcsw2R1Da0u-ZwI8pn0CUgHaEK?w=298&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
        jenis: 'Rottweiler',
        umur: 'age: 2 years',
        gender: 'gender: Male',
        telepon: 'call: 08515747760'),
  ];
}

class Hewan {
  final String imgUrl;
  final String jenis;
  final String umur;
  final String gender;
  final String telepon;

  const Hewan({
    this.imgUrl,
    this.jenis,
    this.umur,
    this.gender,
    this.telepon,
  });
  static const List<Hewan> generatedHewan = [
    Hewan(
        imgUrl:
            'https://yt3.ggpht.com/a/AATXAJzNB40Zkv2PV248nDyWCQsSiCIUN0Io_4L-1w=s900-c-k-c0xffffffff-no-rj-mo',
        jenis: 'Arabian Shorthair',
        umur: 'age: 2 years',
        gender: 'gender: Male',
        telepon: 'call: 08515747760'),
    Hewan(
        imgUrl:
            'https://th.bing.com/th/id/OIP.oLjWSVkucLg9xDREILPHDAHaFK?w=249&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
        jenis: 'Beruang Coklat',
        umur: 'age: 2 years',
        gender: 'gender: Male',
        telepon: 'call: 08515747760'),
    Hewan(
        imgUrl:
            'https://th.bing.com/th/id/OIP.o3fpQ_RUfUZZrKjmnaeBaAHaFj?pid=ImgDet&rs=1',
        jenis: 'Gajah Pendek',
        umur: 'age: 2 years',
        gender: 'gender: Male',
        telepon: 'call: 08515747760'),
    Hewan(
        imgUrl:
            'https://th.bing.com/th/id/OIP.vmOSRx4B--GXaKJbPDPrHgHaE8?w=268&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
        jenis: 'Kadal Gurun',
        umur: 'age: 2 years',
        gender: 'gender: Male',
        telepon: 'call: 08515747760'),
  ];
}

class Shop {
  final String imgUrl;
  final String jenis;
  final String harga;
  final String stok;

  const Shop({
    this.imgUrl,
    this.jenis,
    this.harga,
    this.stok,
  });
  static const List<Shop> generatedShop = [
    Shop(
      imgUrl:
          'https://th.bing.com/th/id/OIP._SINTVhu9zAgeVE4yaSJhQHaHa?w=185&h=185&c=7&r=0&o=5&dpr=1.25&pid=1.7',
      jenis: 'Sisir Kucing',
      harga: 'Rp. 25.000',
      stok: 'stok: 10',
    ),
    Shop(
      imgUrl:
          'https://th.bing.com/th/id/OIP.u0LjHcEYUB1yArfFaClEggHaHa?w=185&h=185&c=7&r=0&o=5&dpr=1.25&pid=1.7',
      jenis: 'Sisir Kucing',
      harga: 'Rp. 20.0000',
      stok: 'stok: 10',
    ),
    Shop(
      imgUrl:
          'https://th.bing.com/th/id/OIP.2P2a-51W67w9HEG9719cBwHaHa?w=191&h=190&c=7&r=0&o=5&dpr=1.25&pid=1.7',
      jenis: 'Mainan Tikus',
      harga: 'Rp. 20.000',
      stok: 'stok: 10',
    ),
    Shop(
      imgUrl:
          'https://th.bing.com/th/id/OIP.Un1o4ZFCsMgMIkQ92eyUZAHaHa?w=210&h=210&c=7&r=0&o=5&dpr=1.25&pid=1.7',
      jenis: 'Tulang Anjing',
      harga: 'Rp. 30.000',
      stok: 'stok: 10',
    ),
  ];
}
