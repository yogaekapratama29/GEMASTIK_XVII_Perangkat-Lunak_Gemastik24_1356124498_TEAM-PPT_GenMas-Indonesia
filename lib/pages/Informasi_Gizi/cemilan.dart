import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cemilan extends StatefulWidget {
  const Cemilan({super.key});

  @override
  State<Cemilan> createState() => _CemilanState();
}

class _CemilanState extends State<Cemilan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
          "Informasi Nilai Gizi",
          style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w500),
        ),),

      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 360,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("images/cemilan.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Kandungan Gizi Pada Cemilan",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only( right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Energi: 180 kkal (8.37% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Lemak total: 0.30 g (0.45% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Vitamin A: 0 mcg (0% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Vitamin B1: 0.05 mg (5% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Vitamin B2: 0.10 mg (10% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Vitamin B3: 2.60 mg (17.33% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Vitamin C: 0 mg (0% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Karbohidrat total: 39.80 g (12.25% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Protein: 3 g (5% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Serat pangan: 0.20 g (0.67% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Kalsium: 25 mg (2.27% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Fosfor: 27 mg (3.86% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Natrium: 1 mg (0.07% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Kalium: 38 mg (0.81% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Tembaga: 100 mcg (12.50% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Besi: 0.40 mg (1.82% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Seng: 0.60 mg (4.62% AKG)",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "B-Karoten: 0 mcg",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Karoten total: -",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Air: 56.70 g",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Abu: 0.20 g",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}