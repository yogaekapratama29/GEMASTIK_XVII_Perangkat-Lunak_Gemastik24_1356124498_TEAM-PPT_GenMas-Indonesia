import 'package:aplikasi_wisata/widgets/event_card.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  const MyTimelineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.eventCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Jarak antara Events
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,

        // dekorasi line nya
        beforeLineStyle: LineStyle(
            color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100),
        indicatorStyle: IndicatorStyle(
          width: 40,
          color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
          iconStyle: IconStyle(
              iconData: Icons.done,
              color: isLast ? Colors.white : Colors.deepPurple.shade100),
        ),
        // event card
        endChild: EventCard(
          isPast: isPast,
          child: eventCard,
        ),
      ),
    );
  }
}
