import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furrfriendlyfinds/util/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 24, right: 24, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: FaIcon(
                          FontAwesomeIcons.chevronLeft,
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
                    Text(
                      "Cart",
                      style: TextStyle(
                          color: ColorConstants.blueMain, fontSize: 22),
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
                SizedBox(
                  height: 20,
                ),
                cartCard('assets/images/dog_fire.png', 'Dog Fighter Outfit',
                    '120', Colors.red),
                SizedBox(
                  height: 20,
                ),
                cartCard('assets/images/dog_shark.png', 'Dog Shark Outfit',
                    '220', Colors.lightBlue),
                SizedBox(
                  height: 20,
                ),
                cartCard('assets/images/dog_pirate.png', 'Dog Pirate Outfit',
                    '320', Colors.black),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: ColorConstants.mainGreen,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '\₱ 500',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstants.whiteMain,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Pay Now',
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.mainGreen,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cartCard(img, name, price, color) {
    return Container(
      height: 120,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.mainGreen, width: 2),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            width: 100,
            child: Image.asset(
              img,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Container(
                          width: 19,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 19,
                    height: 19,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\₱ $price',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
