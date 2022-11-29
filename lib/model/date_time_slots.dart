class DateTimeSlots {
  String? date;
  List<Timeslots>? timeslots;

  DateTimeSlots({this.date, this.timeslots});

  DateTimeSlots.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    if (json['timeslots'] != null) {
      timeslots = <Timeslots>[];
      json['timeslots'].forEach((v) {
        timeslots!.add(Timeslots.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['date'] = date;
    if (timeslots != null) {
      data['timeslots'] = timeslots!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Timeslots {
  String? id;
  String? start;
  String? end;

  Timeslots({this.id, this.start, this.end});

  Timeslots.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['start'] = start;
    data['end'] = end;
    return data;
  }
}
