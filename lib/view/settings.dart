import 'package:flutter/material.dart';

import '../constant.dart';
import 'home.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});
  static const String routeName = 'Setting Screen';

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen>
    with SingleTickerProviderStateMixin {
  bool _switch1 = false;
  bool _switch2 = false;
  bool _switch3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, HomeScreen.routeName);
                        },
                        child: Image.asset(
                          'assets/image/Group0.png',
                          width: 25,
                          height: 25,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 24,
                            color: color1,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notifications,
                    color: color1,
                    size: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: 20, vertical: 15),
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 5,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpansionTile(
                  iconColor: Colors.transparent,
                  collapsedIconColor: Colors.transparent,
                  shape: Border.all(color: Colors.transparent),
                  title: Center(
                    child: Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 18,
                        color: color1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ibrahimrasith@gmail.com',
                          style: TextStyle(
                            fontSize: 18,
                            color: color1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '6369718561',
                          style: TextStyle(
                            fontSize: 18,
                            color: color1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 18,
                            color: color1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'India',
                          style: TextStyle(
                            fontSize: 18,
                            color: color1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '15-08-2000',
                          style: TextStyle(
                            fontSize: 18,
                            color: color1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Google',
                          style: TextStyle(
                            fontSize: 18,
                            color: color1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Switch(
                            activeColor: color3,
                            activeTrackColor: color1,
                            inactiveThumbColor: color1,
                            inactiveTrackColor: Colors.white,
                            value: _switch1,
                            onChanged: (s) {
                              setState(() {
                                _switch1 = !_switch1;
                              });
                            }),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: AlignmentDirectional.center,
                              width: 150,
                              padding: EdgeInsetsDirectional.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffDAD0E1)),
                              child: Text(
                                ' Make changes',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: color4,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: 20, vertical: 15),
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 5,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              alignment: AlignmentDirectional.center,
              child: ExpansionTile(
                iconColor: Colors.transparent,
                collapsedIconColor: Colors.transparent,
                shape: Border.all(color: Colors.transparent),
                title: Center(
                  child: Text(
                    'Notification',
                    style: TextStyle(
                      fontSize: 18,
                      color: color1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reminders',
                          style: TextStyle(
                              fontSize: 14,
                              color: color1,
                              fontWeight: FontWeight.bold),
                        ),
                        Switch(
                            activeColor: color3,
                            activeTrackColor: color1,
                            inactiveThumbColor: color1,
                            inactiveTrackColor: Colors.white,
                            value: _switch2,
                            onChanged: (s) {
                              setState(() {
                                _switch2 = !_switch2;
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommendations',
                          style: TextStyle(
                              fontSize: 14,
                              color: color1,
                              fontWeight: FontWeight.bold),
                        ),
                        Switch(
                            activeColor: color3,
                            activeTrackColor: color1,
                            inactiveThumbColor: color1,
                            inactiveTrackColor: Colors.white,
                            value: _switch3,
                            onChanged: (s) {
                              setState(() {
                                _switch3 = !_switch3;
                              });
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: 20, vertical: 15),
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 5,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              alignment: AlignmentDirectional.center,
              child: ExpansionTile(
                iconColor: Colors.transparent,
                collapsedIconColor: Colors.transparent,
                shape: Border.all(color: Colors.transparent),
                title: Center(
                  child: Text(
                    'Privacy & Security',
                    style: TextStyle(
                      fontSize: 18,
                      color: color1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Privacy Policy Last updated: January 11, 2022 This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You. We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the Privacy Policy Template. Interpretation and Definitions Interpretation The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural. Definitions For the purposes of this Privacy Policy: Account means a unique account created for You to access our Service or parts of our Service. Affiliate means an entity that controls, is controlled by or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority. Application means the software program provided by the Company downloaded by You on any electronic device, named Quran App Company (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to Quran App. Country refers to: Tamil Nadu, India',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: 20, vertical: 15),
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 5,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              alignment: AlignmentDirectional.center,
              child: ExpansionTile(
                iconColor: Colors.transparent,
                collapsedIconColor: Colors.transparent,
                shape: Border.all(color: Colors.transparent),
                title: Center(
                  child: Text(
                    'Help & Support',
                    style: TextStyle(
                      fontSize: 18,
                      color: color1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'For further information about this app',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'CONTACT:',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' ibrahimrasith@gmail.com',
                              style: TextStyle(
                                color: color4,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: 20, vertical: 15),
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 5,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              alignment: AlignmentDirectional.center,
              child: ExpansionTile(
                iconColor: Colors.transparent,
                collapsedIconColor: Colors.transparent,
                shape: Border.all(color: Colors.transparent),
                title: Center(
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 18,
                      color: color1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Welcome to Quran App, your number one source for all good things. We're dedicated to providing you the best of agirah, with a focus on agirah.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "We're working to turn our mission towards agirah. We hope you get the good information as much as we gather offering them to you.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Sincerely',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Mohamed Ibrahim J',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
