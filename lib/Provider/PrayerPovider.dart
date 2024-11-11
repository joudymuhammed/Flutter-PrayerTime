import 'package:flutter/cupertino.dart';
import 'package:prayertime/Models/PrayerModel.dart';
import 'package:prayertime/Services/PrayerService.dart';
import 'package:provider/provider.dart';

class PrayerPovider extends ChangeNotifier
{
  PrayerModel?  MprayerTimes;

  Future<void>FetchPrayerTimes()async
  {
    MprayerTimes = await PrayerService.GetPrayerTimes();
    notifyListeners();
  }
}