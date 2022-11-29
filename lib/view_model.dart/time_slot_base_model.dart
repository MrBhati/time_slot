import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:time_slot/model/doctors_details.dart';
import 'package:time_slot/services/http_services.dart';

class TimeSlotBaseModel extends ChangeNotifier {
  final HttpService _httpService = HttpService();
  DoctorsDetails? doctorsDetailsModel;
  Map<String, List<String>> dateTimeSlots = {};
  String? currentDate, selectedTime;

  TimeSlotBaseModel({Key? key}) {
    getDoctorsData();
  }

  getDoctorsData() {
    Map<String, dynamic> data = {"user_id": 33, "doctor_id": 3};
    _httpService
        .postDataWithOutHeader(
            url:
                "https://aartas-qaapp-as.azurewebsites.net/aartas_uat/public/api/doctor",
            requestBody: data)
        .then((value) {
      if (value.statusCode == 200) {
        Map<String, dynamic> doctorsMapData = json.decode(value.data);
        doctorsDetailsModel = DoctorsDetails.fromJson(doctorsMapData);

        for (var valuea in doctorsDetailsModel!.data![0].timeslots!) {
          if (!dateTimeSlots.containsKey(valuea.date)) {
            dateTimeSlots[valuea.date.toString()] = <String>[];
          }
          dateTimeSlots[valuea.date.toString()]!
              .add(valuea.timeFrom.toString());
        }
        currentDate = dateTimeSlots.isNotEmpty ? dateTimeSlots.keys.first : "";
        if (kDebugMode) {
          print(dateTimeSlots.toString());
        }
        notifyListeners();
      }
    }).catchError((onError) {
      if (kDebugMode) {
        print("Error in doctor api $onError");
      }
    });
  }

  void updateDate(String value) {
    currentDate = value;
    selectedTime = "";
    notifyListeners();
  }

  void updateTime(String value) {
    selectedTime = value;
    notifyListeners();
  }
}
