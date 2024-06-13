import 'dart:io';

import 'package:aplikasi_wisata/image_picker/image_helper.dart';
import 'package:aplikasi_wisata/pages/onboarding_screen.dart';
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

class Akun extends StatefulWidget {
  const Akun({
    super.key,
    required this.initials,
  });

  final String initials;

  @override
  State<Akun> createState() => _AkunState();
}

class _AkunState extends State<Akun> {
// untuk file image
  File? _image;

  int _selectedIndex = 4;

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
                  ? Color.fromARGB(255, 255, 255, 255)
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
          ]),
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Account",
                        style: GoogleFonts.poppins(
                            fontSize: 28, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: FittedBox(
                      fit: BoxFit.contain,
                      child: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          radius: 64,
                          backgroundImage:
                              _image != null ? FileImage(_image!) : null,
                          foregroundImage:
                              _image != null ? FileImage(_image!) : null,
                          child: _image != null
                              ? Text(
                                  widget.initials,
                                  style: TextStyle(fontSize: 48),
                                )
                              : null),
                    )),
                    SizedBox(
                      height: 16,
                    ),
                    TextButton(
                      onPressed: () async {
                        final imageHelper =
                            ImageHelper(); // Buat instance ImageHelper
                        final files = await imageHelper.pickImage();
                        // Panggil metode pickImage
                        if (files != null) {
                          setState(() {
                            _image = File(files.path);
                          });
                        }
                      },
                      child: Center(
                          child: Text(
                        "Select Photo",
                        style: TextStyle(color: Colors.black),
                      )),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    // Data Akun
                    // NIK
                    Container(
                      width: 370,
                      padding: EdgeInsets.only(left: 10),
                      height: 53,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 1.0,
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      )),
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "2311104231231393131",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    // Nama
                    Container(
                      width: 370,
                      padding: EdgeInsets.only(left: 10),
                      height: 53,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 1.0,
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      )),
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "User 1",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    // Tanggal Lahir
                    Container(
                      width: 370,
                      padding: EdgeInsets.only(left: 10),
                      height: 53,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 1.0,
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      )),
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "20 Mei 1998",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    // Tempat
                    Container(
                      width: 370,
                      padding: EdgeInsets.only(left: 10),
                      height: 53,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 1.0,
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      )),
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Purwokerto",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    // Email
                    Container(
                      width: 370,
                      padding: EdgeInsets.only(left: 10),
                      height: 53,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 1.0,
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      )),
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "user1@gmail.com",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    // No Handphone
                    Container(
                      width: 370,
                      padding: EdgeInsets.only(left: 10),
                      height: 53,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 1.0,
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      )),
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "083725263567",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Log Out
                    Center(
                      child: InkWell(
                        onTap: () {
                          final snackBar = SnackBar(
                            content: Text('Do you really want to exit?'),
                            action: SnackBarAction(
                              label: 'Yes',
                              onPressed: () {
                                // Show a confirmation dialog
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Confirm Exit'),
                                      content: Text(
                                          'Are you sure you want to exit?'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pop(); // Close the dialog
                                          },
                                          child: Text('No'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pop(); // Close the dialog
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Onboardingscreen()),
                                            );
                                          },
                                          child: Text('Yes'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(right: 10),
                          width: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(78, 178, 174, 174)),
                            color: Color.fromARGB(255, 220, 38, 38),
                          ),
                          child: Center(
                            child: Text(
                              "Keluar",
                              style: GoogleFonts.poppins(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      child: Center(child: Text("Version 1.0")),
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
