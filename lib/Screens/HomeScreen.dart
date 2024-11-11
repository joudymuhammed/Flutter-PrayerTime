import 'package:flutter/material.dart';
import 'package:prayertime/Provider/PrayerPovider.dart';
import 'package:provider/provider.dart';

import '../Widgets/Card.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
          title: const Text('Prayer times', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white) )),

      body: Container(
        color: Colors.pink[100],
        child: Consumer<PrayerPovider>(
          builder: (context, provider, child) {
            final prayerData = provider.MprayerTimes?.data;

            if (prayerData == null) {
              provider.FetchPrayerTimes();
              return const Center(
                  child: CircularProgressIndicator());
            }else {
              return ListView.separated(
                itemBuilder: (context, index) {

                  return PrayerTimeCard(
                    PrayerName: prayerData.keys.elementAt(index),
                    prayerTime:  prayerData.values.elementAt(index),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(height: 20),
                itemCount: prayerData.length,
              );
            }
          },
        ),
      ),
    );
  }
}