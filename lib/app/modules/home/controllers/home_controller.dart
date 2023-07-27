import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:ishaqkhan/app/const/firebaseConst.dart';

class HomeController extends GetxController {
 getBanquetHalls(){
    return firestore.collection("hallsAndBanquets").get();
  }
  QueryDocumentSnapshot?halldetails;
}
