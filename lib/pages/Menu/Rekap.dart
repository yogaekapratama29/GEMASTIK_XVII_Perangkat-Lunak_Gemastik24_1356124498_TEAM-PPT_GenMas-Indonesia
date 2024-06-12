import 'package:aplikasi_wisata/widgets/timeline_tile.dart';
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
import 'package:timeline_tile/timeline_tile.dart';

class Rekap extends StatefulWidget {
  const Rekap({super.key});

  @override
  State<Rekap> createState() => _RekapState();
}

class _RekapState extends State<Rekap> {

int _selectedIndex = 3;
  
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 20,bottom: 20),
            child: Text(
              "Rekapitulasi",
              style: GoogleFonts.poppins(
                  fontSize: 28, fontWeight: FontWeight.w600),
            ),
          ),
          // start timeline
          Container(
              margin: EdgeInsets.only(left: 10),
              child: MyTimelineTile(
                isFirst: true,
                isLast: false,
                isPast: false,
                eventCard:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tanggal 12 Januari 2024",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    // Ada Maksimal Penulisan 
                    Text("Anak sudah melakukan vaksinasi cacar,serta sudah mendapatkan vitamin,tinggi badan anak menjadi 120 cm,berat badan menjadi 30 kg",textAlign: TextAlign.justify,)
                  ],
                ),
              )),

          // midlle timeline
          Container(
              margin: EdgeInsets.only(left: 10),
              child: MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tanggal 15 Februari 2024",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                                        // Ada Maksimal Penulisan 
                    Text("Anak sudah melakukan vaksinasi cacar,serta sudah mendapatkan vitamin,tinggi badan anak menjadi 120 cm,berat badan menjadi 30 kg",textAlign: TextAlign.justify,)
                  ],
                ),
              )),

          // end timeline
          Container(
              margin: EdgeInsets.only(left: 10),
              child: MyTimelineTile(
                isFirst: false,
                isLast: true,
                isPast: false,
                eventCard:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tanggal 17 Maret 2024",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                                        // Ada Maksimal Penulisan 
                    Text("Anak sudah melakukan vaksinasi cacar,serta sudah mendapatkan vitamin,tinggi badan anak menjadi 120 cm,berat badan menjadi 30 kg",textAlign: TextAlign.justify,)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
