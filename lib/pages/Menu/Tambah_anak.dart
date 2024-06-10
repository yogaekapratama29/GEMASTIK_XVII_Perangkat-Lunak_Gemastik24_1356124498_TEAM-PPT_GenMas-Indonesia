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
