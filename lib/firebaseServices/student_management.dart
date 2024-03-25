import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class StudentRepository extends GetxController {
  static StudentRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;
}
