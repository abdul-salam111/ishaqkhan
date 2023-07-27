import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ishaqkhan/app/modules/commonWidgets/customeButton.dart';
import 'package:ishaqkhan/app/modules/home/controllers/home_controller.dart';
import '../../../routes/app_pages.dart';
import '../../const.dart';

class HalldetailsView extends GetView<HomeController> {
  const HalldetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 13, 98, 109),
        appBar: AppBar(
          backgroundColor: darkcolor,
          title: Text(controller.halldetails!['hall_Name']),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "${controller.halldetails!['hall_Image']}")),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              height: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      controller.halldetails!['hall_Name'],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      controller.halldetails!['hall_Rent'],
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                controller.halldetails!['hall_Address'],
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    "Capacity: ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "${controller.halldetails!['hall_Capacity']} seats",
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Description: ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 1,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                controller.halldetails!['description'],
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Expanded(child: Container()),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customButton(
                      onPress: () => Get.toNamed(Routes.HALL_BOOKING),
                      btnName: "Book Now"),
                ))
          ],
        ));
  }
}
