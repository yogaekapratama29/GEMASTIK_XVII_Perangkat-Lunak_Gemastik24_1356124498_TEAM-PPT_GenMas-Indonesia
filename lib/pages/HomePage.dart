import 'dart:io';

import 'package:aplikasi_wisata/Profile%20Provider/profile_provider.dart';
import 'package:aplikasi_wisata/pages/Main_Features/CalculatorGizi.dart';
import 'package:aplikasi_wisata/pages/Main_Features/FormPendaftaran.dart';
import 'package:aplikasi_wisata/pages/Main_Features/Pusat_Bantuan.dart';
import 'package:aplikasi_wisata/pages/Menu/Akun.dart';
import 'package:aplikasi_wisata/pages/Menu/Rekap.dart';
import 'package:aplikasi_wisata/pages/Menu/Tambah_anak.dart';
import 'package:aplikasi_wisata/pages/Menu/newspage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

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
    Akun(
      initials: "AK",
    ),
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
    final profileProvider = Provider.of<ProfileProvider>(context);
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
            color: _selectedIndex == 0
                ? const Color.fromARGB(255, 255, 255, 255)
                : Colors.white,
            size: 40,
          ),
          Icon(
            Icons.newspaper_outlined,
            color: _selectedIndex == 1
                ? const Color.fromARGB(255, 255, 255, 255)
                : Colors.white,
            size: 40,
          ),
          Icon(
            MdiIcons.plusCircle,
            color: _selectedIndex == 2
                ? const Color.fromARGB(255, 255, 255, 255)
                : Colors.white,
            size: 50,
          ),
          Icon(
            Icons.history,
            color: _selectedIndex == 3
                ? const Color.fromARGB(255, 255, 255, 255)
                : Colors.white,
            size: 40,
          ),
          Icon(
            Icons.person,
            color: _selectedIndex == 4
                ? const Color.fromARGB(255, 255, 255, 255)
                : Colors.white,
            size: 40,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nama User dan Profile
            Padding(
              padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Hai, User1.....",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: 35,
                        backgroundImage: profileProvider.imagePath.isNotEmpty
                            ? FileImage(File(profileProvider.imagePath))
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Menu Section
            Padding(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Container(padding: EdgeInsets.only(right: 25),
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 244, 114, 181),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    buildMenuIcon(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Calculatorgizi(),
                          ),
                        );
                      },
                      icon: MdiIcons.calculator,
                      label: "Calculator",
                    ),
                    Spacer(),
                    buildMenuIcon(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Formpendaftaran(),
                          ),
                        );
                      },
                      icon: MdiIcons.mapOutline,
                      label: "Form Pendaftaran",
                    ),
                    Spacer(),
                    buildMenuIcon(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PusatBantuan(),
                          ),
                        );
                      },
                      icon: MdiIcons.faceAgent,
                      label: "Pusat Bantuan",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Section Untuk Perkembangan Anak
            Row(
              children: [
                //Kontainer Inti
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 190,
                    height: 380,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 114, 181),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Text(
                            "Nama Anak",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        buildIndicator(icon: MdiIcons.scaleBathroom, label: "120 kg"),
                        SizedBox(height: 10),
                        buildIndicator(icon: MdiIcons.ruler, label: "50 m"),
                        SizedBox(height: 10),
                        buildIndicator(icon: MdiIcons.babyFaceOutline, label: "1 tahun"),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Center(
                            child: Text(
                              "1",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Imunisasi",
                            style: GoogleFonts.poppins(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Section untuk gambar ini beda grid
                Container(
                  margin: EdgeInsets.only(top: 0,right: 20),
                  width: 170,
                  height: 380,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 244, 114, 181),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Image.asset("images/Baby.png"),
                  ),
                ),
              ],
            ),
            // News Section (jika ada)
          ],
        ),
      ),
    );
  }

  Widget buildMenuIcon({
    required VoidCallback onTap,
    required IconData icon,
    required String label,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 30),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          color: Color.fromARGB(248, 244, 114, 181),
          size: 60,
        ),
      ),
    );
  }

  Widget buildIndicator({
    required IconData icon,
    required String label,
  }) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            icon,
            color: Color.fromARGB(248, 244, 114, 181),
            size: 25,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

