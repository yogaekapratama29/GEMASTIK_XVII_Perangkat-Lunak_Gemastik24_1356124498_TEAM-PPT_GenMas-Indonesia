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
    return Container(margin: EdgeInsets.only(left: 5),
      child: SizedBox(
        // Jarak antara Events
        height: 170,
        child: TimelineTile(
          isFirst: isFirst,
          isLast: isLast,
      
          // dekorasi line nya
          beforeLineStyle: LineStyle(
              color: Color.fromARGB(248, 244, 114, 181)),
          indicatorStyle: IndicatorStyle(
            width: 40,
            color:  Color.fromARGB(248, 244, 114, 181),
            iconStyle: IconStyle(
                iconData: Icons.done,
                color: const Color.fromARGB(255, 255, 255, 255)),
          ),
          // event card
          endChild: EventCard(
            isPast: isPast,
            child: eventCard,
          ),
        ),
      ),
    );
  }
}
