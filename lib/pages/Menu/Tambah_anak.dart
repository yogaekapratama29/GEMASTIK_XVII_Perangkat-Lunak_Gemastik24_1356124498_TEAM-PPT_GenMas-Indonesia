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

class TambahAnak extends StatefulWidget {
  const TambahAnak({super.key});

  @override
  State<TambahAnak> createState() => _TambahAnakState();
}

class _TambahAnakState extends State<TambahAnak> {

int _selectedIndex = 2;
  
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
              "Tambah Data Anak",
              style: GoogleFonts.poppins(
                  fontSize: 28, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 360,
            height: 50,
            margin: EdgeInsets.only(left: 20),
            child: TextField(
              decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(186, 158, 158, 158),
                  ),
                  labelText: "NIK",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(78, 178, 174, 174),
                        width: 2),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 360,
            height: 50,
            margin: EdgeInsets.only(left: 20),
            child: TextField(
              decoration: InputDecoration(
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(186, 158, 158, 158)),
                  labelText: "Nama Anak",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(78, 178, 174, 174),
                        width: 2),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 360,
            height: 50,
            margin: EdgeInsets.only(left: 20),
            child: TextField(
              decoration: InputDecoration(
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(186, 158, 158, 158)),
                  labelText: "Tempat,Tanggal Lahir",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(78, 178, 174, 174),
                        width: 2),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 360,
            height: 50,
            margin: EdgeInsets.only(left: 20),
            child: TextField(
              decoration: InputDecoration(
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(186, 158, 158, 158)),
                  labelText: "Nama Ibu",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(78, 178, 174, 174),
                        width: 2),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(color: const Color.fromARGB(78, 178, 174, 174)),
                color: Color.fromARGB(248, 244, 114, 181)),
            child: Center(
                child: Text(
              "Tambahkan",
              style: GoogleFonts.poppins(fontSize: 20,color: Colors.white),
            )),
          ))
        ],
      ),
    );
  }
}
