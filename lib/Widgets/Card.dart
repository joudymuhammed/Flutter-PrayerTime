import 'package:flutter/material.dart';

class PrayerTimeCard extends StatelessWidget {
  final String PrayerName;
  final String prayerTime;
   PrayerTimeCard({required this.PrayerName,required this.prayerTime});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(6),
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              PrayerName,
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent[400],fontSize: 30),
            ),
            Text(
              prayerTime,
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal[300], fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
