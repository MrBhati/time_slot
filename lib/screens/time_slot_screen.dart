import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_slot/view_model.dart/time_slot_base_model.dart';

class TimeSlotScreen extends StatelessWidget {
  const TimeSlotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff29272b),
      body: SafeArea(
        child: ChangeNotifierProvider<TimeSlotBaseModel>(
          create: (context) => TimeSlotBaseModel(),
          child: Consumer<TimeSlotBaseModel>(
            builder: (context, model, child) {
              return Center(
                child: model.doctorsDetailsModel == null
                    ? const CircularProgressIndicator()
                    : Padding(
                        padding: const EdgeInsets.only(left: 14, top: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Select Appointment date",
                              style: TextStyle(
                                  color: Color(0xfff2f2f2),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 10),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: model.dateTimeSlots.keys
                                    .map((key) => GestureDetector(
                                          onTap: () {
                                            model.updateDate(key);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 24, vertical: 14),
                                            margin: const EdgeInsets.only(
                                                right: 16),
                                            decoration: BoxDecoration(
                                                color: model.currentDate != key
                                                    ? const Color(0xff39373b)
                                                    : const Color(0xfff2f2f2),
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                            child: Text(
                                              key,
                                              style: TextStyle(
                                                  color: model.currentDate !=
                                                          key
                                                      ? const Color(0xfff2f2f2)
                                                      : const Color(0xff39373b),
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                            const SizedBox(height: 14),
                            const Text(
                              "Select Appointment date",
                              style: TextStyle(
                                  color: Color(0xfff2f2f2),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              height: 300,
                              child: GridView.count(
                                crossAxisCount: 4,
                                childAspectRatio: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                physics: const BouncingScrollPhysics(),
                                children:
                                    model.dateTimeSlots[model.currentDate]!.map(
                                  (value) {
                                    return GestureDetector(
                                      onTap: () {
                                        model.updateTime(value);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1.5,
                                                color: const Color(0xfff2f2f2)
                                                    .withOpacity(
                                                        model.selectedTime !=
                                                                value
                                                            ? 0.4
                                                            : 0.9)),
                                            borderRadius:
                                                BorderRadius.circular(14)),
                                        child: Center(
                                          child: Text(
                                            value,
                                            style: TextStyle(
                                                color: const Color(0xfff2f2f2)
                                                    .withOpacity(
                                                        model.selectedTime !=
                                                                value
                                                            ? 0.4
                                                            : 0.9),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}
