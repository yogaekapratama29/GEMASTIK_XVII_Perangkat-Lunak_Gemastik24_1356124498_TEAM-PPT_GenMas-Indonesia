import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final bool isPast;
  final child;
  const EventCard({super.key, required this.isPast, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.only(left: 10,top: 65),
      padding: EdgeInsets.only(right: 20,left: 2),
      decoration: BoxDecoration(
          // color: Colors.deepPurple,
          // color:isPast ? Colors.deepPurple.shade300 : Colors.deepPurple.shade100,
          borderRadius: BorderRadius.circular(8)),
      child: child,
    );
  }
}
