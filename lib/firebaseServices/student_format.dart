import 'package:cloud_firestore/cloud_firestore.dart';

class StudentFormat {
  final String course;
  final String desig;
  final String phone;
  final String name;
  final String regnum;
  final String academic;
  final String batch;
  final String email;
  final String email2;
  final String year;

  const StudentFormat({
    required this.course,
    required this.desig,
    required this.phone,
    required this.name,
    required this.regnum,
    required this.academic,
    required this.batch,
    required this.email,
    required this.email2,
    required this.year,
  });

  factory StudentFormat.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return StudentFormat(
        course: data["Course"],
        desig: data["Desig"],
        phone: data["Mobile"],
        name: data["Name"],
        regnum: data["RegNum"],
        academic: data["academic"],
        batch: data["batch"],
        email: data["email"],
        email2: data["email2"],
        year: data["year"]);
  }
}
