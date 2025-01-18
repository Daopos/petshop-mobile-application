import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furrfriendlyfinds/util/colors.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Text(
                      "Service",
                      style: TextStyle(
                          color: ColorConstants.blueMain, fontSize: 30),
                    ),
                    SizedBox(
                      width: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: FaIcon(
                          FontAwesomeIcons.bell,
                          size: 20,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(2),
                            backgroundColor: Colors.white, // <-- Button color
                            foregroundColor: Colors.black,
                            elevation: 3,
                            side: const BorderSide(
                              width: 1.0,
                              color: Colors.black,
                            ) // <-- Splash color
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Cut and file nails for pets',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              serviceCard('assets/images/dog_grooming.png', ColorConstants.c3,
                  () => null),
              SizedBox(
                height: 10,
              ),
              Text(
                'Styling for pet',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              serviceCard('assets/images/service_styling.png',
                  ColorConstants.c4, () => null),
              Text(
                'Pet Training',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              serviceCard('assets/images/service_training.png',
                  ColorConstants.c5, () => null),
              Text(
                'Bathing pet',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              serviceCard('assets/images/service_bath.png', ColorConstants.c6,
                  () => null),
            ],
          ),
        ),
      ),
    ));
  }

  Widget serviceCard(title, color, Function() onPressedCallback) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/serviceapppage'),
      child: Container(
        width: double.infinity,
        child: Card(
          elevation: 2,
          color: Color(0xff0D9276),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                child: Image.asset(title),
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15.0))),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15, left: 15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Nail Service",
                  style: TextStyle(color: Color(0xffFFF6E9), fontSize: 18),
                ),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
