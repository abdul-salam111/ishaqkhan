import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ishaqkhan/app/modules/commonWidgets/customTextfield.dart';
import 'package:ishaqkhan/app/routes/app_pages.dart';

import '../../const.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Banquet Halls",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpg"))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            searchTextfield(
                hintText: "Search here...", suffixIcon: Icons.search),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
              child: OutlinedButton.icon(
                onPressed: () {},
                label: const Text(
                  "Sort",
                  style: TextStyle(color: Colors.grey),
                ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
                style: OutlinedButton.styleFrom(shape: const StadiumBorder()),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FutureBuilder(
                future: controller.getBanquetHalls(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(color: darkcolor),
                    );
                  } else if (snapshot.data!.docs.isEmpty) {
                    return const Center(
                      child: Text("No hall found"),
                    );
                  } else {
                    return Expanded(
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            var data = snapshot.data!.docs[index];
                            return Container(
                              margin: const EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                  color: normalcolor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, right: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 200,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  data['hall_Image']),
                                              fit: BoxFit.cover)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        data['hall_Name'],
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            data['hall_Address'],
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: OutlinedButton(
                                              onPressed: () {
                                                Get.put(HomeController()).halldetails=data;
                                                Get.toNamed(Routes.HALLDETAILS);
                                              },
                                              style: OutlinedButton.styleFrom(
                                                  side: const BorderSide(
                                                      color: Colors.white),
                                                  foregroundColor: darkcolor,
                                                  minimumSize:
                                                      const Size(40, 25),
                                                  shape: const StadiumBorder()),
                                              child: const Text(
                                                "Details",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
