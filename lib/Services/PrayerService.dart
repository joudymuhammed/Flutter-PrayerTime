import 'package:dio/dio.dart';
import 'package:prayertime/Models/PrayerModel.dart';

class PrayerService{
 static Dio dio = Dio();
  static Future <PrayerModel> GetPrayerTimes() async
   {
     try {
       final response = await dio.get("http://api.aladhan.com/v1/timingsByCity?city=Giza&country=Egypt");
       if (response.statusCode == 200) {
         return PrayerModel.fromJson(response.data);
       }
       else {
         throw Exception('Failed to load prayer times');
       }
     } catch(error)
     {
       print("Error : ${error}");
       throw ("error fetching prayer times");
     }
   }
}