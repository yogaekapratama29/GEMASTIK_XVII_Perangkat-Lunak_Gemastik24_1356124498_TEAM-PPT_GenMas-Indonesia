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
import 'package:aplikasi_wisata/flush%20bar/flush.dart';

class Formpendaftaran extends StatefulWidget {
  const Formpendaftaran({super.key});

  @override
  State<Formpendaftaran> createState() => _FormpendaftaranState();
}

class _FormpendaftaranState extends State<Formpendaftaran> {
// untuk Form
  final _formState = GlobalKey<FormState>();
  final alamatController = TextEditingController();
  final kecamatanController = TextEditingController();
  final kabupatenController = TextEditingController();
  final posyanduController = TextEditingController();
  final pilihNamaAnakController = TextEditingController();
  final nikController = TextEditingController();
  final namaAnakController = TextEditingController();
  final tempatLahirController = TextEditingController();
  final namaIbuController = TextEditingController();

// untuk Navbar Bawah
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
      body: ListView(
        children: [
          Form(
            key: _formState,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Form Daftar",
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    controller: alamatController,
                    validator: (value) {
                      if (value == "") {
                        return "Text tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: const Color.fromARGB(186, 158, 158, 158),
                        ),
                        labelText: "Masukan Alamat",
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    controller: kecamatanController,
                    validator: (value) {
                      if (value == "") {
                        return "Text tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: const Color.fromARGB(186, 158, 158, 158),
                        ),
                        labelText: "Masukan Kecamatan",
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    controller: kabupatenController,
                    validator: (value) {
                      if (value == "") {
                        return "Text tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: const Color.fromARGB(186, 158, 158, 158),
                        ),
                        labelText: "Masukan Kabupaten",
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    controller: posyanduController,
                    validator: (value) {
                      if (value == "") {
                        return "Text tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: const Color.fromARGB(186, 158, 158, 158),
                        ),
                        labelText: "Pilih Posyandu",
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    controller: pilihNamaAnakController,
                    validator: (value) {
                      if (value == "") {
                        return "Text tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: const Color.fromARGB(186, 158, 158, 158),
                        ),
                        labelText: "Pilih Nama Anak",
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    controller: nikController,
                    validator: (value) {
                      if (value == "") {
                        return "Text tidak boleh kosong";
                      }
                      return null;
                    },
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    controller: namaAnakController,
                    validator: (value) {
                      if (value == "") {
                        return "Text tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: const Color.fromARGB(186, 158, 158, 158),
                        ),
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    controller: tempatLahirController,
                    validator: (value) {
                      if (value == "") {
                        return "Text tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: const Color.fromARGB(186, 158, 158, 158),
                        ),
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    controller: namaIbuController,
                    validator: (value) {
                      if (value == "") {
                        return "Text tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: const Color.fromARGB(186, 158, 158, 158),
                        ),
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
                  child: Container(margin: EdgeInsets.only(left: 10,right: 10),
                    child: SizedBox(
                      width: 360,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(
                                248,
                                244,
                                114,
                                181,
                              ),
                              foregroundColor: Colors.white),
                          onPressed: () {
                            if (_formState.currentState!.validate()) {
                              // Tampilkan pesan berhasil jika semua input valid
                              Flush.showFlushBar(context, "Berhasil", "Data berhasil ditambahkan", Colors.green);
                            } else {
                              // Tampilkan pesan kesalahan jika ada input yang tidak valid
                              Flush.showFlushBar(context, "Gagal", "Mohon isi semua kolom", Colors.red);
                            }
                          },
                          child: Text(
                            "Daftar",
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
