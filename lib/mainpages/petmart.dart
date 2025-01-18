import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furrfriendlyfinds/util/colors.dart';

class PetMartPage extends StatefulWidget {
  const PetMartPage({super.key});

  @override
  State<PetMartPage> createState() => _PetMartPageState();
}

class _PetMartPageState extends State<PetMartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
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
                        "Pet Mart",
                        style: TextStyle(
                            color: ColorConstants.blueMain, fontSize: 30),
                      ),
                      SizedBox(
                        width: 30,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/cartpage');
                          },
                          child: FaIcon(
                            FontAwesomeIcons.basketShopping,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: ColorConstants.whiteMain,
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: ColorConstants.whiteMain, width: 1.0),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: ColorConstants.whiteMain, width: 1.0),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(left: 24, right: 24),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 150,
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 30.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: double
                                  .infinity, // Make sure the container takes the full width
                              height: 50, // Set the desired height
                              child: Image.asset(
                                'assets/images/c_food.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              width: double
                                  .infinity, // Make sure the container takes the full width
                              height: 50, // Set the desired height
                              child: Image.asset(
                                'assets/images/c_fashion.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 12,
                        child: Container(
                          padding:
                              EdgeInsets.only(bottom: 10, left: 5, right: 10),
                          color: Colors.white,
                          child: Text(
                            'Category',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  runSpacing: 10,
                  children: [
                    customCart('Dog Fighter Outfit',
                        'assets/images/dog_fire.png', '120', ColorConstants.c5),
                    customCart('Dog Princess Outfit',
                        'assets/images/dog_frog.png', '120', ColorConstants.c4),
                    customCart('Canidae Dog Food', 'assets/images/petfood4.png',
                        '120', ColorConstants.c6),
                    customCart(
                        'Dog Shark Outfit',
                        'assets/images/dog_shark.png',
                        '120',
                        ColorConstants.c5),
                    customCart('N&D Pet Food', 'assets/images/petfood2.png',
                        '120', ColorConstants.c3),
                    customCart(
                        'Dog Pirate Outfit',
                        'assets/images/dog_pirate.png',
                        '120',
                        ColorConstants.c7),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customCart(title, image, price, color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/petshoppage'),
        child: Container(
          width: 160,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 160,
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
}
