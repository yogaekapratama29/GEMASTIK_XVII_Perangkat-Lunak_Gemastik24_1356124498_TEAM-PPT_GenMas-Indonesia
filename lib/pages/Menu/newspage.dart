import 'package:flutter/material.dart';
import 'package:aplikasi_wisata/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_wisata/pages/Main_Features/CalculatorGizi.dart';
import 'package:aplikasi_wisata/pages/Main_Features/Pusat_Bantuan.dart';
import 'package:aplikasi_wisata/pages/Menu/Akun.dart';
import 'package:aplikasi_wisata/pages/Main_Features/FormPendaftaran.dart';
import 'package:aplikasi_wisata/pages/Menu/Rekap.dart';
import 'package:aplikasi_wisata/pages/Menu/Tambah_anak.dart';
import 'package:aplikasi_wisata/pages/Menu/newspage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Newspage extends StatefulWidget {
  const Newspage({super.key});

  @override
  State<Newspage> createState() => _NewspageState();
}

class _NewspageState extends State<Newspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 75.0,
          backgroundColor: Color.fromARGB(248, 255, 255, 255),
          color: Color.fromARGB(248, 244, 114, 181),
          animationDuration: Duration(milliseconds: 250),
          onTap: (index) {},
          items: [
            InkWell(
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              child: Icon(
                Icons.home,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 40,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Newspage()));
              },
              child: Icon(
                Icons.newspaper_outlined,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 40,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TambahAnak()));
              },
              child: Icon(
                MdiIcons.plusCircle,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 50,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Rekap()));
              },
              child: Icon(
                Icons.history,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 40,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Akun()));
              },
              child: Icon(
                Icons.person,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 40,
              ),
            )
          ]),
      appBar: AppBar(
        title: Text(
          "News",
          style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.w500),
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 2),
                      width: 320,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("images/news1.png"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: 320,
                      child: Text(
                        "Bagaimana Pengobatan Dan Pencegahan Stunting",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 2),
                      width: 320,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("images/news2.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: 320,
                      child: Text(
                        "Edukasi Calon Pengantin Secara Offline Lebih Efektif untuk Pencegahan Balita Stunting",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 2),
                      width: 320,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("images/news3.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: 320,
                      child: Text(
                        "Cegah Pernikahan Dini Hindari Dari Stunting, BKKBN Sosialisasikan pada MTsN 5 HST",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
