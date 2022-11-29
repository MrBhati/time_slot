class DoctorsDetails {
  String? message;
  bool? status;
  List<Data>? data;

  DoctorsDetails({this.message, this.status, this.data});

  DoctorsDetails.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['message'] = message;
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  Null? userId;
  String? clinicId;
  String? roomId;
  String? doctorName;
  String? email;
  String? phoneCountryCode;
  String? phoneNumber;
  Null? fcmToken;
  String? gender;
  String? address;
  Null? cityId;
  String? languages;
  int? specialityId;
  String? registrationNum;
  Null? medicalAuthorityId;
  String? degreeSuffix;
  String? expertiseSubSpecialty;
  String? image;
  String? pdfHeader;
  String? pdfFooter;
  String? scheduleDays;
  String? scheduleTimings;
  String? hoursPerMonth;
  String? agreementFile;
  String? startDate;
  String? agreementRenewDate;
  String? consulationFee;
  String? timePerPatient;
  String? appointmentPhoneNumber;
  String? website;
  Null? instagram;
  Null? facebook;
  Null? youtube;
  Null? profileShareCount;
  int? profileVerified;
  int? profileStatus;
  Null? resetToken;
  int? onRequest;
  int? prePayEnrolled;
  Null? prePayDiscount;
  String? totalExperience;
  String? createdAt;
  String? updatedAt;
  Null? createdBy;
  int? updatedBy;
  int? status;
  String? rentAmount;
  String? securityAmount;
  List<Timeslots>? timeslots;
  Timeslots? latestTimeslot;
  List<Null>? diseaseFocus;
  List<Null>? education;
  Speciality? speciality;
  List<Timings>? timings;
  List<DoctorImages>? doctorImages;

  Data(
      {this.id,
      this.userId,
      this.clinicId,
      this.roomId,
      this.doctorName,
      this.email,
      this.phoneCountryCode,
      this.phoneNumber,
      this.fcmToken,
      this.gender,
      this.address,
      this.cityId,
      this.languages,
      this.specialityId,
      this.registrationNum,
      this.medicalAuthorityId,
      this.degreeSuffix,
      this.expertiseSubSpecialty,
      this.image,
      this.pdfHeader,
      this.pdfFooter,
      this.scheduleDays,
      this.scheduleTimings,
      this.hoursPerMonth,
      this.agreementFile,
      this.startDate,
      this.agreementRenewDate,
      this.consulationFee,
      this.timePerPatient,
      this.appointmentPhoneNumber,
      this.website,
      this.instagram,
      this.facebook,
      this.youtube,
      this.profileShareCount,
      this.profileVerified,
      this.profileStatus,
      this.resetToken,
      this.onRequest,
      this.prePayEnrolled,
      this.prePayDiscount,
      this.totalExperience,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.status,
      this.rentAmount,
      this.securityAmount,
      this.timeslots,
      this.latestTimeslot,
      this.diseaseFocus,
      this.education,
      this.speciality,
      this.timings,
      this.doctorImages});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    clinicId = json['clinic_id'];
    roomId = json['room_id'];
    doctorName = json['doctor_name'];
    email = json['email'];
    phoneCountryCode = json['phone_country_code'];
    phoneNumber = json['phone_number'];
    fcmToken = json['fcm_token'];
    gender = json['gender'];
    address = json['address'];
    cityId = json['city_id'];
    languages = json['languages'];
    specialityId = json['speciality_id'];
    registrationNum = json['registration_num'];
    medicalAuthorityId = json['medical_authority_id'];
    degreeSuffix = json['degree_suffix'];
    expertiseSubSpecialty = json['expertise_subSpecialty'];
    image = json['image'];
    pdfHeader = json['pdf_header'];
    pdfFooter = json['pdf_footer'];
    scheduleDays = json['scheduleDays'];
    scheduleTimings = json['scheduleTimings'];
    hoursPerMonth = json['hours_per_month'];
    agreementFile = json['agreement_file'];
    startDate = json['start_date'];
    agreementRenewDate = json['agreement_renew_date'];
    consulationFee = json['consulationFee'];
    timePerPatient = json['time_per_patient'];
    appointmentPhoneNumber = json['appointment_phone_number'];
    website = json['website'];
    instagram = json['instagram'];
    facebook = json['facebook'];
    youtube = json['youtube'];
    profileShareCount = json['profile_share_count'];
    profileVerified = json['profile_verified'];
    profileStatus = json['profile_status'];
    resetToken = json['reset_token'];
    onRequest = json['on_request'];
    prePayEnrolled = json['pre_pay_enrolled'];
    prePayDiscount = json['pre_pay_discount'];
    totalExperience = json['total_experience'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    status = json['status'];
    rentAmount = json['rent_amount'];
    securityAmount = json['security_amount'];
    if (json['timeslots'] != null) {
      timeslots = <Timeslots>[];
      json['timeslots'].forEach((v) {
        timeslots!.add(Timeslots.fromJson(v));
      });
    }
    latestTimeslot = json['latest_timeslot'] != null
        ? Timeslots.fromJson(json['latest_timeslot'])
        : null;
    speciality = json['speciality'] != null
        ? Speciality.fromJson(json['speciality'])
        : null;
    if (json['timings'] != null) {
      timings = <Timings>[];
      json['timings'].forEach((v) {
        timings!.add(Timings.fromJson(v));
      });
    }
    if (json['doctor_images'] != null) {
      doctorImages = <DoctorImages>[];
      json['doctor_images'].forEach((v) {
        doctorImages!.add(DoctorImages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['user_id'] = userId;
    data['clinic_id'] = clinicId;
    data['room_id'] = roomId;
    data['doctor_name'] = doctorName;
    data['email'] = email;
    data['phone_country_code'] = phoneCountryCode;
    data['phone_number'] = phoneNumber;
    data['fcm_token'] = fcmToken;
    data['gender'] = gender;
    data['address'] = address;
    data['city_id'] = cityId;
    data['languages'] = languages;
    data['speciality_id'] = specialityId;
    data['registration_num'] = registrationNum;
    data['medical_authority_id'] = medicalAuthorityId;
    data['degree_suffix'] = degreeSuffix;
    data['expertise_subSpecialty'] = expertiseSubSpecialty;
    data['image'] = image;
    data['pdf_header'] = pdfHeader;
    data['pdf_footer'] = pdfFooter;
    data['scheduleDays'] = scheduleDays;
    data['scheduleTimings'] = scheduleTimings;
    data['hours_per_month'] = hoursPerMonth;
    data['agreement_file'] = agreementFile;
    data['start_date'] = startDate;
    data['agreement_renew_date'] = agreementRenewDate;
    data['consulationFee'] = consulationFee;
    data['time_per_patient'] = timePerPatient;
    data['appointment_phone_number'] = appointmentPhoneNumber;
    data['website'] = website;
    data['instagram'] = instagram;
    data['facebook'] = facebook;
    data['youtube'] = youtube;
    data['profile_share_count'] = profileShareCount;
    data['profile_verified'] = profileVerified;
    data['profile_status'] = profileStatus;
    data['reset_token'] = resetToken;
    data['on_request'] = onRequest;
    data['pre_pay_enrolled'] = prePayEnrolled;
    data['pre_pay_discount'] = prePayDiscount;
    data['total_experience'] = totalExperience;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['status'] = status;
    data['rent_amount'] = rentAmount;
    data['security_amount'] = securityAmount;

    if (timeslots != null) {
      data['timeslots'] = timeslots!.map((v) => v.toJson()).toList();
    }
    if (latestTimeslot != null) {
      data['latest_timeslot'] = latestTimeslot!.toJson();
    }
    if (speciality != null) {
      data['speciality'] = speciality!.toJson();
    }
    if (timings != null) {
      data['timings'] = timings!.map((v) => v.toJson()).toList();
    }
    if (doctorImages != null) {
      data['doctor_images'] = doctorImages!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Timeslots {
  int? id;
  int? doctorId;
  String? date;
  String? timeFrom;
  String? timeTo;
  int? clinicId;
  int? clinicRoomsId;
  int? bookingStatus;
  String? createdAt;
  String? updatedAt;
  Null? createdBy;
  Null? updatedBy;
  int? status;

  Timeslots(
      {this.id,
      this.doctorId,
      this.date,
      this.timeFrom,
      this.timeTo,
      this.clinicId,
      this.clinicRoomsId,
      this.bookingStatus,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.status});

  Timeslots.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    doctorId = json['doctor_id'];
    date = json['date'];
    timeFrom = json['time_from'];
    timeTo = json['time_to'];
    clinicId = json['clinic_id'];
    clinicRoomsId = json['clinic_rooms_id'];
    bookingStatus = json['booking_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['doctor_id'] = doctorId;
    data['date'] = date;
    data['time_from'] = timeFrom;
    data['time_to'] = timeTo;
    data['clinic_id'] = clinicId;
    data['clinic_rooms_id'] = clinicRoomsId;
    data['booking_status'] = bookingStatus;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['status'] = status;
    return data;
  }
}

class Speciality {
  int? id;
  String? name;
  String? iconUrl;
  int? status;
  String? description;
  String? conditions;
  Null? createdAt;
  String? updatedAt;
  String? bgColor1;
  String? bgColor2;
  Null? iconColor;
  Null? createdBy;
  Null? updatedBy;

  Speciality(
      {this.id,
      this.name,
      this.iconUrl,
      this.status,
      this.description,
      this.conditions,
      this.createdAt,
      this.updatedAt,
      this.bgColor1,
      this.bgColor2,
      this.iconColor,
      this.createdBy,
      this.updatedBy});

  Speciality.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    iconUrl = json['icon_url'];
    status = json['status'];
    description = json['description'];
    conditions = json['conditions'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    bgColor1 = json['bg_color1'];
    bgColor2 = json['bg_color2'];
    iconColor = json['icon_color'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['icon_url'] = iconUrl;
    data['status'] = status;
    data['description'] = description;
    data['conditions'] = conditions;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['bg_color1'] = bgColor1;
    data['bg_color2'] = bgColor2;
    data['icon_color'] = iconColor;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    return data;
  }
}

class Timings {
  int? id;
  int? doctorId;
  String? scheduleDays;
  String? scheduleTimings;
  Null? timePerPatient;
  int? clinicId;
  int? clinicRoomsId;
  int? createdBy;
  int? updatedBy;
  String? createdAt;
  String? updatedAt;
  int? status;
  Clinic? clinic;

  Timings(
      {this.id,
      this.doctorId,
      this.scheduleDays,
      this.scheduleTimings,
      this.timePerPatient,
      this.clinicId,
      this.clinicRoomsId,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt,
      this.status,
      this.clinic});

  Timings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    doctorId = json['doctor_id'];
    scheduleDays = json['scheduleDays'];
    scheduleTimings = json['scheduleTimings'];
    timePerPatient = json['time_per_patient'];
    clinicId = json['clinic_id'];
    clinicRoomsId = json['clinic_rooms_id'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = json['status'];
    clinic = json['clinic'] != null ? Clinic.fromJson(json['clinic']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['doctor_id'] = doctorId;
    data['scheduleDays'] = scheduleDays;
    data['scheduleTimings'] = scheduleTimings;
    data['time_per_patient'] = timePerPatient;
    data['clinic_id'] = clinicId;
    data['clinic_rooms_id'] = clinicRoomsId;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['status'] = status;
    if (clinic != null) {
      data['clinic'] = clinic!.toJson();
    }
    return data;
  }
}

class Clinic {
  int? id;
  String? title;
  String? address;
  int? totalRoooms;
  String? phoneNumber;
  Null? gSTIN;
  Null? stateCode;
  String? ipAddressList;
  String? latitude;
  String? longitude;
  Null? createdAt;
  Null? updatedAt;
  Null? createdBy;
  Null? updatedBy;
  int? status;
  List<Rooms>? rooms;

  Clinic(
      {this.id,
      this.title,
      this.address,
      this.totalRoooms,
      this.phoneNumber,
      this.gSTIN,
      this.stateCode,
      this.ipAddressList,
      this.latitude,
      this.longitude,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.status,
      this.rooms});

  Clinic.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    address = json['address'];
    totalRoooms = json['total_roooms'];
    phoneNumber = json['phone_number'];
    gSTIN = json['GSTIN'];
    stateCode = json['state_code'];
    ipAddressList = json['ip_address_list'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    status = json['status'];
    if (json['rooms'] != null) {
      rooms = <Rooms>[];
      json['rooms'].forEach((v) {
        rooms!.add(Rooms.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['address'] = address;
    data['total_roooms'] = totalRoooms;
    data['phone_number'] = phoneNumber;
    data['GSTIN'] = gSTIN;
    data['state_code'] = stateCode;
    data['ip_address_list'] = ipAddressList;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['status'] = status;
    if (rooms != null) {
      data['rooms'] = rooms!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Rooms {
  int? id;
  int? clinicId;
  String? roomNumber;
  int? roomType;
  Null? mapImage;
  Null? createdAt;
  Null? updatedAt;
  Null? createdBy;
  Null? updatedBy;
  int? status;

  Rooms(
      {this.id,
      this.clinicId,
      this.roomNumber,
      this.roomType,
      this.mapImage,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.status});

  Rooms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clinicId = json['clinic_id'];
    roomNumber = json['room_number'];
    roomType = json['room_type'];
    mapImage = json['map_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['clinic_id'] = clinicId;
    data['room_number'] = roomNumber;
    data['room_type'] = roomType;
    data['map_image'] = mapImage;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['status'] = status;
    return data;
  }
}

class DoctorImages {
  int? id;
  int? doctorId;
  int? sectionId;
  String? image;
  String? pattern;
  Null? createdBy;
  Null? updatedBy;
  String? createdAt;
  String? updatedAt;
  int? status;
  Section? section;

  DoctorImages(
      {this.id,
      this.doctorId,
      this.sectionId,
      this.image,
      this.pattern,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt,
      this.status,
      this.section});

  DoctorImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    doctorId = json['doctor_id'];
    sectionId = json['section_id'];
    image = json['image'];
    pattern = json['pattern'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = json['status'];
    section =
        json['section'] != null ? Section.fromJson(json['section']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['doctor_id'] = doctorId;
    data['section_id'] = sectionId;
    data['image'] = image;
    data['pattern'] = pattern;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['status'] = status;
    if (section != null) {
      data['section'] = section!.toJson();
    }
    return data;
  }
}

class Section {
  int? id;
  String? title;
  Null? createdAt;
  Null? updatedAt;
  Null? createdBy;
  Null? updatedBy;
  int? status;

  Section(
      {this.id,
      this.title,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.status});

  Section.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['status'] = status;
    return data;
  }
}
