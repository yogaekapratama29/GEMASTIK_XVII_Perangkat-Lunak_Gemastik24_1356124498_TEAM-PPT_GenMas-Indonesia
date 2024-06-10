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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 75.0,
          backgroundColor: Color.fromARGB(248, 255, 255, 255),
          color: Color.fromARGB(248, 244, 114, 181),
          animationDuration: Duration(milliseconds: 250),
          onTap: (index) {
            print(index);
          },
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
