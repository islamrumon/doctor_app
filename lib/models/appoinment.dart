/// appointments : [{"id":1,"doctor_id":4,"patient_id":2,"date":"2022-05-10 00:00:00","status":0,"subject":"dddddddd","desc":"eeeeeeeeeee","created_at":"2022-05-06T10:21:49.000000Z","updated_at":"2022-05-06T10:21:49.000000Z"},{"id":2,"doctor_id":4,"patient_id":2,"date":"2022-05-10 00:00:00","status":0,"subject":"natok","desc":"natok me","created_at":"2022-05-06T10:21:55.000000Z","updated_at":"2022-05-06T10:21:55.000000Z"}]



/// id : 1
/// doctor_id : 4
/// patient_id : 2
/// date : "2022-05-10 00:00:00"
/// status : 0
/// subject : "dddddddd"
/// desc : "eeeeeeeeeee"
/// created_at : "2022-05-06T10:21:49.000000Z"
/// updated_at : "2022-05-06T10:21:49.000000Z"

class Appointments {

  late int id;
  late int doctorId;
  late int patientId;
  late String date;
  late int status;
  late String subject;
  late String desc;
  late String createdAt;
  late  String updatedAt;

  Appointments({
      required this.id,
      required this.doctorId,
      required this.patientId,
      required this.date,
      required this.status,
      required this.subject,
      required this.desc,
      required this.createdAt,
      required this.updatedAt,});

  Appointments.fromJson(dynamic json) {
    id = json['id'];
    doctorId = json['doctor_id'];
    patientId = json['patient_id'];
    date = json['date'];
    status = json['status'];
    subject = json['subject'];
    desc = json['desc'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }



}