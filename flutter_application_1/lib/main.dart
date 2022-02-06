import 'package:flutter/material.dart';

import 'detail.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Rumus Fisika"),
        ),
        body: _PageList());
  }
}
//class
class _PageList extends StatefulWidget {
  _PageStateListState createState() => _PageStateListState();
}

class _PageStateListState extends State<_PageList> {
  List<String> namaRumus = [
  "1.Rumus Massa Jenis",
  "2.Rumus Gaya",
  "3.Rumus Frekuensi",
  "4.Rumus Periode",
  "5.Rumus Cepat Rambat Gelombang",
  "6.Rumus Energi Potensial",
  "7.Rumus Energi Kinetik",
  "8.Rumus Rangkaian Listrik",
  "9.Rumus Besaran Turunan",
  "10.Rumus Panjang Gelombang",
    
  ];


  List<String> isiRumus = [
   " ρ = m/v",
   "F = m x a",
   "f = n/t",
   "T = t/n",
  "v = s / t",
  "Ep = m.g.h",
  "Ek = ½ mv2",
  "V = I.R",
  "(a) = (v)  kecepatan / (t) waktu = m (s-2)",
  "λ = c/f",
  ];

  List<String> ketRumus= [
  "Rumus Fisika yang pertama adalah massa jenis, yaitu suatu ukuran untuk menunjukkan kerapatan dan kepadatan suatu partikel tersusun.Lambang dari massa jenis adalah “ρ” (dibaca: rho). Menurut sistem Satuan Internasional (SI), satuan massa jenis adalah kg/m3 atau kg.m-3.",
  "Rumus gaya adalah salah satu rumus fisika yang paling sering digunakan. Gaya adalah salah satu dari besaran turunan yang dapat menyebabkan sebuah benda bermassa mengalami pergerakan. Satuan gaya menurut SI adalah Newton (N) dengan lambangnya yaitu F",
  "Frekuensi juga merupakan salah satu rumus fisika yang paling sering digunakan. adalah jumlah getaran yang dihasilkan setiap satu detik. Menurut sistem Satuan Internasional (S1), satuan frekuensi adalah Hz (Hertz) dengan lambangnya adalah f.",
  "Rumus fisika yang akan aku bahas selanjutnya adalah rumus periode. Periode adalah lama waktu yang diperlukan untuk melakukan satu getaran atau gelombang. Lambang periode adalah T dengan satuannya detik atau sekon (s)",
  "Cepat rambat gelombang adalah jarak yang ditempuh oleh gelombang setiap detik. Satuannya adalah m/s dan dilambangkan dengan huruf “v”",
  "Energi potensial adalah energi yang dimiliki oleh benda karena adanya pengaruh kedudukan dari benda tersebut. Jadi, sekalipun benda tersebut diam, ia memiliki energi potensial. Contohnya buah apel di atas pohon, apel tersebut memiliki energi potensial. Ketika buah apel jatuh, maka energi potensial berubah menjadi energi kinetik.",
  "Energi kinetik adalah rumus fisika selanjutnya yang paling sering digunakan. Energi kinetik merupakan suatu energi yang dimiliki oleh suatu benda karena pergerakannya. Seperti tadi aku gambarkan ketika apel masih berada di pohonnya, maka energi yang dimiliki adalah potensial, namun ketika apel tersebut jatuh, maka ia mengalami energi kinetik",
  "Hukum Ohm berbunyi: “Besar arus listrik (I) yang mengalir melalui sebuah penghantar akan berbanding lurus dengan tegangan/beda potensial (V) yang diterapkan kepadanya dan berbanding terbalik dengan hambatannya R“. ",
  "Percepatan memiliki satuan SI dengan simbol (a), percepatan adalah hasil dari besaran kecepatan (m/s) dibagi waktu (s). Sehingga rumus yang dihasilkannya adalah a = v / t.",
  "Keterangan: λ = panjang gelombang dari sebuah gelombang suara ataupun gelombang elektromagnetik c = kecepatan cahaya pada ruang hampa = 299.792.458 m/s ~ 300.000 km/s = 300.000.000 m/s ataupun c = kecepatan suara pada udara = 344 m/s pada 20 °C (68 °F) f = frekuensi gelombang",
  ];

  get t => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: namaRumus.length,
        itemBuilder: (BuildContext contex, int index) {
          final number = ketRumus[index].toString();
          final title = namaRumus[index].toString();
          final subTitle = isiRumus[index].toString();
          return Container(
            height: 200,
            padding: EdgeInsets.all(8),
            child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: topContent(title, subTitle, number),
                  )
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                          itemArti: number,
                          itemNama: title,
                          itemIsi: subTitle,
                        )));
              },
            ),
          );
        },
      ),
    );
  }
}


topContent(String nama, String deskripsi, String nomor) {
  return new Container(
    height: 200,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          nama,
          style: bigHeaderText,
        ),
        Container(
          height: 2,
          width: 80,
          color: Colors.pink,
        ),
        Text(
          deskripsi,
          style: descHeaderText,
        ),
        Text(
          nomor,
          style: footerHeaderText,
        )
      ],
    ),
  );
}

final baseTextStyle = const TextStyle(color: Colors.black, fontFamily: 'arial');

final bigHeaderText =
baseTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.bold);

final descHeaderText =
baseTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w400);

final footerHeaderText =
baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400);
