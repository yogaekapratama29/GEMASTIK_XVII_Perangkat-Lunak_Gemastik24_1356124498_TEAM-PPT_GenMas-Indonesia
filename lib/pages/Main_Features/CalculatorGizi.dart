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

class Calculatorgizi extends StatefulWidget {
  const Calculatorgizi({super.key});

  @override
  State<Calculatorgizi> createState() => _CalculatorgiziState();
}

class _CalculatorgiziState extends State<Calculatorgizi> {
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
      appBar: AppBar(),
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Informasi Nilai Gizi",
                      style: GoogleFonts.poppins(
                          fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 360,
                    height: 50,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(248, 244, 114, 181),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            color: Color.fromARGB(185, 255, 255, 255),
                          ),
                          labelText: "Mau Cari Informasi Makanan Apa?",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color.fromARGB(78, 255, 255, 255),
                                width: 1),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Section 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 165,
                        height: 143,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/nasi.webp"),
                                fit: BoxFit.cover),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 165,
                              height: 35,
                              color: Color.fromARGB(248, 244, 114, 181),
                              child: Container(padding: EdgeInsets.only(left: 10,top: 5),
                                  child: Text(
                                "Nasi",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        width: 165,
                        height: 143,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/asi.png"),
                                fit: BoxFit.cover),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 165,
                              height: 35,
                              color: Color.fromARGB(248, 244, 114, 181),
                              child: Container(padding: EdgeInsets.only(left: 10,top: 5),
                                  child: Text(
                                "Asi",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Section 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Container(
                        width: 165,
                        height: 143,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/bubur_instan.png"),
                                fit: BoxFit.cover),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 165,
                              height: 35,
                              color: Color.fromARGB(248, 244, 114, 181),
                              child: Container(padding: EdgeInsets.only(left: 10,top: 5),
                                  child: Text(
                                "Bubur Instan",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        width: 165,
                        height: 143,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/bubur.png"),
                                fit: BoxFit.cover),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 165,
                              height: 35,
                              color: Color.fromARGB(248, 244, 114, 181),
                              child: Container(padding: EdgeInsets.only(left: 10,top: 5),
                                  child: Text(
                                "Bubur Beras",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Section 3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 165,
                        height: 143,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/biskuit.png"),
                                fit: BoxFit.cover),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 165,
                              height: 35,
                              color: Color.fromARGB(248, 244, 114, 181),
                              child: Container(padding: EdgeInsets.only(left: 10,top: 5),
                                  child: Text(
                                "Biskuit",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        width: 165,
                        height: 143,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/cemilan.png"),
                                fit: BoxFit.cover),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 165,
                              height: 35,
                              color: Color.fromARGB(248, 244, 114, 181),
                              child: Container(padding: EdgeInsets.only(left: 10,top: 5),
                                  child: Text(
                                "Cemilan",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
