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

class PusatBantuan extends StatefulWidget {
  const PusatBantuan({super.key});

  @override
  State<PusatBantuan> createState() => _PusatBantuanState();
}

class _PusatBantuanState extends State<PusatBantuan> {

 int _selectedIndex = 0;
  
  final List<Widget> _pages = [
    Homepage(),
    Newspage(),
    TambahAnak(),
    Rekap(),
    Akun(initials: "AK",),
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
            color: _selectedIndex == 3 ? Color.fromARGB(255, 255, 255, 255) : Colors.white,
            size: 40,
          ),
          Icon(
            Icons.person,
            color: _selectedIndex == 4 ? const Color.fromARGB(255, 255, 255, 255) : Colors.white,
            size: 40,
          ),
          ]),
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Pusat Bantuan",
              style: GoogleFonts.poppins(
                  fontSize: 28, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Cari masalah apa yang sedang kamu alami?",
              style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            width: 370,
            padding: EdgeInsets.only(left: 10),
            height: 53,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 217, 217, 217),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color.fromARGB(78, 178, 174, 174),
              ),
            ),
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Keamanan dan Keadaan Darurat",
                style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            width: 370,
            padding: EdgeInsets.only(left: 10),
            height: 53,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 217, 217, 217),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color.fromARGB(78, 178, 174, 174),
              ),
            ),
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Masalah pada Aplikasi",
                style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w400),
              ),
            ),
          ),          Container(
            width: 370,
            padding: EdgeInsets.only(left: 10),
            height: 53,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 217, 217, 217),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color.fromARGB(78, 178, 174, 174),
              ),
            ),
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Masalah pada Akun",
                style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w400),
              ),
            ),
          ),          Container(
            width: 370,
            padding: EdgeInsets.only(left: 10),
            height: 53,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 217, 217, 217),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color.fromARGB(78, 178, 174, 174),
              ),
            ),
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Tentang Aplikasi",
                style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
