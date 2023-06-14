import 'package:flutter/material.dart';
import 'package:insta_lite/data/product_data.dart';
import 'package:insta_lite/data/profile_data.dart';

import '../../data/category_data.dart';
import '../../utilis/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool selectedindex = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1675034342130-fc0d1c67b3eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybCUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Janifer vellium",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "20 November!",
                          style: TextStyle(fontSize: 11, color: ktextgreyClr),
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: kboxgreyClr,
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: kblackClr,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: kboxgreyClr,
                    child: const Icon(
                      Icons.menu,
                      color: kblackClr,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                            itemCount: categoryData.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: categoryData[index].isActive
                                          ? kprimaryClr
                                          : kboxgreyClr,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: kwhiteClr,
                                          child: Image.network(
                                            categoryData[index].image,
                                            height: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          categoryData[index].title,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: categoryData[index].isActive
                                                ? kwhiteClr
                                                : kblackClr,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            itemCount: profileData.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 35,
                                      backgroundImage: NetworkImage(
                                        profileData[index].image,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      profileData[index].title,
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Top Creators",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(fontSize: 14, color: kprimaryClr),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: kprimaryClr,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: productData.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Container(
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      color: kwhiteClr,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  productData[index].image),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    productData[index].title,
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  const SizedBox(
                                                    height: 3,
                                                  ),
                                                  Text(
                                                    productData[index].subtitle,
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color: ktextgreyClr),
                                                  )
                                                ],
                                              ),
                                            ),
                                            CircleAvatar(
                                                backgroundColor: kboxgreyClr,
                                                child: Image.network(
                                                  "https://png.pngtree.com/png-clipart/20220921/original/pngtree-fire-logo-png-image_8625285.png",
                                                  height: 30,
                                                )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: 220,
                                          width: double.maxFinite,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              productData[index].bgimg,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: MaterialButton(
                                                onPressed: () {},
                                                color: kboxgreyClr,
                                                elevation: 0,
                                                height: 40,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.share,
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      "Share",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: MaterialButton(
                                                onPressed: () {},
                                                color: kprimaryClr,
                                                elevation: 0,
                                                height: 40,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Support",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: kwhiteClr,
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ));
                          }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
