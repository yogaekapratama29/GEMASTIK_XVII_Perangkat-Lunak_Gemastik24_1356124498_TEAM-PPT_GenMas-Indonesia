import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final bool isPast;
  final Widget child;

  const EventCard({
    super.key,
    required this.isPast,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4,horizontal: 4), // Mengurangi margin atas dan bawah
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8), // Mengurangi padding keseluruhan
      decoration: BoxDecoration(
        color:  Color.fromARGB(255, 252, 202, 243),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: child,
      ),
    );
  }
}
