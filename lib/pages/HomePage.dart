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

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  

  @override
  State<Homepage> createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  
  final List<Widget> _pages = [
    Homepage(),
    Newspage(),
    TambahAnak(),
    Rekap(),
    Akun(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _pages[index]),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      bottomNavigationBar: CurvedNavigationBar(
          height: 75.0,
          backgroundColor: Color.fromARGB(248, 255, 255, 255),
          color: Color.fromARGB(248, 244, 114, 181),
          animationDuration: Duration(milliseconds: 300),
          index: _selectedIndex,
          onTap: _onItemTapped,
          items: [
             Icon(
            Icons.home,
            color: _selectedIndex == 0 ? const Color.fromARGB(255, 255, 255, 255) : Colors.white,
            size: 40,
          ),
          Icon(
            Icons.newspaper_outlined,
            color: _selectedIndex == 1 ? const Color.fromARGB(255, 255, 255, 255) : Colors.white,
            size: 40,
          ),
          Icon(
            MdiIcons.plusCircle,
            color: _selectedIndex == 2 ? const Color.fromARGB(255, 255, 255, 255) : Colors.white,
            size: 50,
          ),
          Icon(
            Icons.history,
            color: _selectedIndex == 3 ? const Color.fromARGB(255, 255, 255, 255) : Colors.white,
            size: 40,
          ),
          Icon(
            Icons.person,
            color: _selectedIndex == 4 ? const Color.fromARGB(255, 255, 255, 255) : Colors.white,
            size: 40,
          ),
          ]),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    // Nama User dan Profile
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              "Hai,User1.....",
                              style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 20, top: 20),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(248, 244, 114, 181),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ],
                    ),
                    // Menu Section
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50, left: 20),
                          height: 120,
                          width: 360,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 244, 114, 181),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Calculatorgizi()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 30),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(color:
                                      const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    MdiIcons.calculator,
                                    color: Color.fromARGB(248, 244, 114, 181),
                                    size: 60,
                                  ),
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Formpendaftaran()));
                                },
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(color:
                                      const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    MdiIcons.mapOutline,
                                    color: Color.fromARGB(248, 244, 114, 181),
                                    size: 60,
                                  ),
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PusatBantuan()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 30),
                                  height: 60,
                                  width: 60,
                                 decoration: BoxDecoration(color:
                                      const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    MdiIcons.faceAgent,
                                    color: Color.fromARGB(248, 244, 114, 181),
                                    size: 60,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //Section Untuk Perkembangan Anak
                    Row(
                      children: [
                        //Kontainer Inti
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          width: 180,
                          height: 380,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 244, 114, 181),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  "Nama Anak",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              // Indikator Untuk Berat dan Tinggi Badan
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      MdiIcons.scaleBathroom,
                                      color: Color.fromARGB(248, 244, 114, 181),
                                      size: 25,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "120 kg",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      MdiIcons.ruler,
                                      color: Color.fromARGB(248, 244, 114, 181),
                                      size: 25,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "50 m",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      MdiIcons.babyFaceOutline,
                                      color: Color.fromARGB(248, 244, 114, 181),
                                      size: 25,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "1 tahun",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 80),
                                child: Text(
                                  "1",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                      color: Colors.white),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 30),
                                child: Text(
                                  "Imunisasi",
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        // Section untuk gambar ini beda grid
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 180,
                          height: 380,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 244, 114, 181),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 160),
                                child: Image.asset("images/Baby.png"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // News Section
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
