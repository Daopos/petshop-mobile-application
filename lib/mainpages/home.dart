import 'package:flutter/material.dart';
import 'package:furrfriendlyfinds/database/fakedatabase.dart';
import 'package:furrfriendlyfinds/database/session.dart';
import 'package:furrfriendlyfinds/database/users.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:furrfriendlyfinds/util/colors.dart';

// final List<String> imgList = [
//   'assets/images/c_one.png',
//   'assets/images/c_two.png'
// ];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    User? loggedInUser = fakeDatabase.getUserByEmail(Session.emailSession);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
              child: Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FurrFriendlyFinds',
                      style: TextStyle(fontSize: 25, color: Color(0xff40A2E3)),
                    ),
                    Text('Enjoy your finds!'),
                  ],
                ),
                Align(
                    child: Icon(
                  size: 40,
                  Icons.notifications_none,
                  color: Color(0xff0D9276),
                ))
              ],
            ),
          )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  aspectRatio: 2.0,
                ),
                items: [
                  'assets/images/c_one.jpg',
                  'assets/images/ctwo.jpg',
                  'assets/images/c_three.jpg',
                  'assets/images/c_four.jpg',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(i, fit: BoxFit.fill)));
                    },
                  );
                }).toList(),
              ),
              GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/servicepage'),
                  child: menuCard(
                    "Service",
                  )),
              Container(
                height: MediaQuery.of(context).size.height *
                    0.24, // Adjust the height as needed
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    serviceCard('assets/images/dog_grooming.png',
                        ' Nail Service', ColorConstants.c3),
                    serviceCard('assets/images/service_bath.png',
                        ' Bathing  Service', ColorConstants.c7),
                    serviceCard('assets/images/service_training.png',
                        ' Training Service', ColorConstants.c4),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/petmartpage'),
                  child: menuCard(
                    "Pet Fashion",
                  )),
              Container(
                height: MediaQuery.of(context).size.height *
                    0.34, // Adjust the height as needed
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    fashionCard('assets/images/dog_bee.png', '200',
                        'Dog Butterfly Outfit', ColorConstants.c5),
                    fashionCard('assets/images/dog_pirate2.png', '300',
                        'Dog Pirate Outfit', ColorConstants.c6),
                    fashionCard('assets/images/dog_fire.png', '400',
                        'Dog FireFighter Outfit', ColorConstants.c3)
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/petmartpage'),
                  child: menuCard(
                    "Pet Food",
                  )),
              Container(
                height: MediaQuery.of(context).size.height *
                    0.30, // Adjust the height as needed
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    foodCard('assets/images/petfood1.png', '200',
                        '9Lives Cat food', ColorConstants.c3),
                    foodCard('assets/images/petfood2.png', '250',
                        'N&D Dog food', ColorConstants.c7),
                    foodCard('assets/images/petfood3.png', '189',
                        'Brit Premium Cat Food', ColorConstants.c5)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuCard(title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text("all >")
        ],
      ),
    );
  }

  Widget fashionCard(image, price, title, color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/petshoppage'),
        child: Container(
          width: 200,
          height: 400,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: color,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorConstants.mainGreen,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '\₱ ${price}',
                                style:
                                    TextStyle(color: ColorConstants.whiteMain),
                              ),
                              Spacer(),
                              Icon(
                                Icons.favorite_outline,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10, bottom: 20),
                          alignment: Alignment.topLeft,
                          child: Text(title,
                              style:
                                  TextStyle(color: ColorConstants.whiteMain)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 160,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget foodCard(image, price, title, color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/petshoppage'),
        child: Container(
          width: 200,
          height: 400,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: color,
                    ),
                    child: Image.asset(
                      image,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorConstants.mainGreen,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '\₱ ${price}',
                                style:
                                    TextStyle(color: ColorConstants.whiteMain),
                              ),
                              Spacer(),
                              Icon(
                                Icons.favorite_outline,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10, bottom: 10),
                          alignment: Alignment.topLeft,
                          child: Text(title,
                              style:
                                  TextStyle(color: ColorConstants.whiteMain)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget serviceCard(image, title, color) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/serviceapppage'),
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
                child: Image.asset(image),
                width: 240,
                height: 120,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15.0))),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: TextStyle(color: Color(0xffFFF6E9), fontSize: 18),
                ),
                width: 200,
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
