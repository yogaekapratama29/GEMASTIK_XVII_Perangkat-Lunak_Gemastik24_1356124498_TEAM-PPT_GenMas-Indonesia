import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News1 extends StatefulWidget {
  const News1({super.key});

  @override
  State<News1> createState() => _News1State();
}

class _News1State extends State<News1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
          "News",
          style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.w500),
        ),),
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 360,
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/news1.png"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Bagaimana Pengobatan Dan Pencegahan Stunting",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Stunting merupakan masalah yang serius karena dapat mempengaruhi pertumbuhan dan perkembangan mereka. Stunting pada anak menjadi tantangan yang serius dalam upaya mencapai kesehatan dan perkembangan optimal. Fenomena ini mempengaruhi jutaan anak di seluruh dunia dan memiliki dampak jangka panjang yang signifikan.",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Agar stunting dapat diatasi, dirasa penting bagi para orang tua ataupun calon orang tua untuk memahami faktor-faktor yang dapat memperbesar potensi stunting. Selain itu, penting juga untuk mengetahui bagaimana mengobati stunting serta bagaimana mencegah stunting demi meningkatkan kualitas hidup mereka untuk tumbuh dengan potensi maksimal.",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Stunting yang tidak mendapatkan penanganan secara cepat, dapat mengakibatkan beberapa komplikasi, seperti:",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "· Anak mengalami gangguan perkembangan otaknya sehingga dapat menurunkan prestasinya karena proses belajar yang terganggu",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "· Mengalami penyakit metabolik seperti diabetes atau obesitas ketika anak dewasa",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "· Anak lebih rentan sakit dan terkena infeksi",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Ada beberapa metode yang dapat dilakukan dalam menangani stunting, seperti mengobati penyakit yang menjadi penyebabnya, memperbaiki asupan nutrisi, memberikan suplemen atau merubah pola hidup yang lebih bersih dan sehat. Ada beberapa tindakan pengobatan yang mungkin dapat dilakukan oleh dokter:",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "· Melakukan pengobatan terhadap penyakit yang mendasari, seperti dengan memberikan obat-obatan antituberkulosis jika anak menderita TBC",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "· Memperbanyak asupan nutrisi tambahan, seperti makanan dengan kandungan protein hewani, lemak juga kalori",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "· Memberikan suplemen tambahan, misalnya vitamin A, zinc, zat besi, kalsium dan yodium",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "· Menganjurkan keluarga untuk memperbaiki sanitasi di lingkungan tempat tinggal",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "· Merubah pola hidup menjadi lebih bersih dan lebih sehat",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Sebagaimana kata pepatah bahwa lebih baik mencegah daripada mengobati, begitu pula dengan stunting yang dapat dicegah dengan menghindari faktor yang mampu memperbesar risikonya. Upaya pencegahan stunting yang dapat dilakukan seperti:",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "· Mencukupi asupan gizi yang cukup sebelum merencakan kehamilan maupun selama masa kehamilan",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "· Memenuhi asupan gizi, terutama pada 1.000 hari pertama kehidupan atau mulai dari pembuahan sel telur hingga anak menginjak usia 2 tahun",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "· Memberikan ASI ekslusif hingga bayi berusia 6 bulan",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "· Penuhi kebutuhan imunisasi anak",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Periksakan kesehatan anak dengan usia di bawah 2 tahun secara rutin 1 bulan sekali ke dokter agar 1.000 hari pertama kehidupan anak. Dan pemeriksaan kesehatan rutin 1 tahun sekali untuk anak dengan usia di atas 2 tahun. Kemudian jangan tunda waktu untuk melakukan pemeriksaan kesehatan jika tinggi badan anak lebih pendek dibandingkan anak seusianya ataupun mengalami gejala stunting lainnya.",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Download aplikasi IHC Telemed di App Store dan Google Play dan nikmati layanan konsultasi langsung dengan dokter IHC dimanapun dan kapanpun. IHC Telemed, sehat dalam genggaman.",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
