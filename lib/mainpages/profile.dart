import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furrfriendlyfinds/util/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                      "Profile",
                      style: TextStyle(
                          color: ColorConstants.blueMain, fontSize: 30),
                    ),
                    SizedBox(
                      width: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: FaIcon(
                          FontAwesomeIcons.gear,
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
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                elevation: 3,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: ColorConstants.whiteMain,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 80,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Name: ',
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: 'Ivan Munoz',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 11)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Email: ',
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: 'Ivanadrian@gmail.com',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 11)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Tel: ',
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: '09455381098',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 11)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Addr: ',
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: 'Calepaan Asingan',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 11)),
                            ]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My orders'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox.fromSize(
                        size: Size(56, 56),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.creditCard,
                                  size: 20,
                                ), // <, // <-- Icon
                                Text("Unpaid"), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox.fromSize(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.box,
                                  size: 20,
                                ), // <-- Icon
                                Text("Processing"), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox.fromSize(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.truckFast,
                                  size: 20,
                                ), // <-- Ico
                                Text("Shipping"), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox.fromSize(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.receipt), // <-- Icon
                                Text("Recieved"), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My reservation'),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox.fromSize(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.clock,
                                  size: 20,
                                ), // <, // <-- Icon
                                Text("Reservation"), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox.fromSize(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.check,
                                  size: 20,
                                ), // <-- Icon
                                Text("Completed"), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox.fromSize(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.xmark,
                                  size: 20,
                                ), // <-- Ico
                                Text("Canceled"), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(),
              Text("Wishlist"),
              SizedBox(
                height: 5,
              ),
              Wrap(
                runSpacing: 10,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  customCart('assets/images/dog_pirate.png', '₱ 250',
                      'Dog Pirate Outfit', ColorConstants.c3),
                  customCart('assets/images/dog_shark.png', '₱ 250',
                      'Dog Shark Outfit', ColorConstants.c4),
                  customCart('assets/images/dog_cape.png', '₱ 250',
                      'Dog Cape Outfit', ColorConstants.c6),
                  customCart('assets/images/dog_christmast.png', '₱ 250',
                      'Dog Christmas Outfit', ColorConstants.c5),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget customCart(img, price, title, color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        width: 150,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: color,
                  ),
                  child: Image.asset(
                    img,
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
                              price,
                              style: TextStyle(color: ColorConstants.whiteMain),
                            ),
                            Spacer(),
                            Icon(
                              Icons.favorite,
                              color: Colors.red[600],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, bottom: 10),
                        alignment: Alignment.topLeft,
                        child: Text(title,
                            style: TextStyle(color: ColorConstants.whiteMain)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
