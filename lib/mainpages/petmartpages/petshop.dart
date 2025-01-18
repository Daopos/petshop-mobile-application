import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furrfriendlyfinds/util/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

final List<String> imgList = [
  'assets/images/dog_cape.png',
  'assets/images/dog_fire.png',
];

class PetShopPage extends StatefulWidget {
  const PetShopPage({super.key});

  @override
  State<PetShopPage> createState() => _PetShopPageState();
}

class _PetShopPageState extends State<PetShopPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Image.asset(item, fit: BoxFit.cover),
              ),
            ),
          ))
      .toList();

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
                        "FurrFriendlyFinds",
                        style: TextStyle(
                            color: ColorConstants.blueMain, fontSize: 18),
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
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24, right: 24, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('S'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('M'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('L'),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              alignment: Alignment.center,
                              height: 35,
                              padding: EdgeInsets.all(1.3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,
                              ),
                              child: Text(
                                'XL',
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            'Color',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 19,
                            height: 19,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 19,
                            height: 19,
                            decoration: BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 250,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: imgList.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () =>
                                      _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 12.0,
                                    height: 12.0,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? Colors.white
                                                : Colors.black)
                                            .withOpacity(_current == entry.key
                                                ? 0.9
                                                : 0.4)),
                                  ),
                                );
                              }).toList(),
                            ),
                            Expanded(
                              child: CarouselSlider(
                                items: imageSliders,
                                carouselController: _controller,
                                options: CarouselOptions(
                                    enlargeCenterPage: true,
                                    aspectRatio: 0.8,
                                    viewportFraction: 1,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        _current = index;
                                      });
                                    }),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    child: Card(
                      color: ColorConstants.whiteMain,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dog Prison outfit',
                              style: TextStyle(
                                  color: ColorConstants.blueMain,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'P 200',
                              style: TextStyle(
                                  color: ColorConstants.mainGreen,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.as popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more   ')
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Shipping from Asingan',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_shipping_outlined,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Shipping fee: 60')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.credit_card_outlined,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Card Policy'),
                      Spacer(),
                      Icon(
                        Icons.chevron_right,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.help_outline,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Size Guide'),
                      Spacer(),
                      Icon(
                        Icons.chevron_right,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Divider(),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: ColorConstants.mainGreen,
          child: Row(
            children: [
              Icon(
                Icons.favorite_outline,
                size: 45,
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 200,
                          padding: EdgeInsets.only(top: 8, bottom: 8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15))),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Size',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Divider(),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(2.7),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                      ),
                                      child: Text(
                                        'Small',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  Text('Medium'),
                                  Text('Large'),
                                  Text('X-Large')
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Color',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Divider(),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 19,
                                    height: 19,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.black, width: 2)),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 19,
                                    height: 19,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Fluttertoast.showToast(
                                          msg: "Added to cart successfully",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.green,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    },
                                    child: Text('Confirm'),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        backgroundColor: Colors.black,
                                        foregroundColor: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorConstants.whiteMain,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                            fontSize: 20,
                            color: ColorConstants.mainGreen,
                            fontWeight: FontWeight.w600),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
