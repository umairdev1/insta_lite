import 'package:flutter/material.dart';
import 'package:insta_lite/utilis/colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  double _currentSliderValue = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: kwhiteClr),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SafeArea(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: kboxgreyClr,
                            child: const Icon(
                              Icons.arrow_back_outlined,
                              color: kblackClr,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Spacer(),
                          const Text(
                            "Profile",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          CircleAvatar(
                            backgroundColor: kboxgreyClr,
                            child: const Icon(
                              Icons.share,
                              color: kblackClr,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: kwhiteClr,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://us.123rf.com/450wm/rbv/rbv1808/rbv180800086/107150420-young-woman-in-wheat-field-at-sunset.jpg?ver=6",
                                  fit: BoxFit.cover,
                                  height: 170,
                                  width: double.maxFinite,
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: kwhiteClr,
                                          child: Image.network(
                                            "https://png.pngtree.com/png-clipart/20220921/original/pngtree-fire-logo-png-image_8625285.png",
                                            height: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  Stack(
                                    children: const [
                                      CircleAvatar(
                                        radius: 55,
                                        backgroundColor: kwhiteClr,
                                      ),
                                      Positioned(
                                        top: 5,
                                        right: 5,
                                        child: CircleAvatar(
                                            radius: 50,
                                            backgroundColor: kwhiteClr,
                                            backgroundImage: NetworkImage(
                                              "https://us.123rf.com/450wm/rbv/rbv1808/rbv180800086/107150420-young-woman-in-wheat-field-at-sunset.jpg?ver=6",
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Text(
                            "Janifer vellium",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Streamer",
                            style: TextStyle(fontSize: 16, color: ktextgreyClr),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "You Support is very Valueable for me, and i wil\ndefinately be more energetic about making\nmore content/work!",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: ktextgreyClr),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: kboxgreyClr,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Image.network(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png",
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: kboxgreyClr,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Image.network(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png",
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: kboxgreyClr,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Image.network(
                                    "https://1000logos.net/wp-content/uploads/2017/02/Instagram-Logo.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: kwhiteClr,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.groups_2_outlined,
                                        color: kprimaryClr,
                                        size: 20,
                                      ),
                                      Text(
                                        "  Followers",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: kprimaryClr,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "1.2k",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: kwhiteClr,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.card_giftcard_outlined,
                                        color: kprimaryClr,
                                        size: 20,
                                      ),
                                      Text(
                                        "  Rewards",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: kprimaryClr,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: kwhiteClr,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Dream PC",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Raised",
                                                style: TextStyle(
                                                    color: ktextgreyClr,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Text(
                                                "\$4300",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Goals",
                                                style: TextStyle(
                                                    color: ktextgreyClr,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Text(
                                                "\$1200",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Top Supporters",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: ktextgreyClr),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        CircleAvatar(
                                          radius: 18,
                                          backgroundImage: NetworkImage(
                                              "https://i.pinimg.com/originals/2b/93/e2/2b93e293e43fdc85f3709e4288c59c73.jpg"),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        CircleAvatar(
                                          radius: 18,
                                          backgroundImage: NetworkImage(
                                              "https://img.freepik.com/premium-photo/closeup-profile-portrait-young-beautiful-fashionable-young-woman-wearing-stylish-accessories-female-fashion-beauty-concept_246930-2529.jpg?w=2000"),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        CircleAvatar(
                                          radius: 18,
                                          backgroundImage: NetworkImage(
                                              "https://dp.profilepics.in/profile_pictures/beautiful-profile-pics-dp/beautiful-profile-pics-1442.jpg"),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Slider(
                              activeColor: kprimaryClr,
                              inactiveColor: klightgreyClr,
                              value: _currentSliderValue,
                              max: 100,
                              divisions: 5,
                              label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
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
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
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
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {},
                            color: kprimaryClr,
                            elevation: 0,
                            height: 40,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Support",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: kwhiteClr,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
