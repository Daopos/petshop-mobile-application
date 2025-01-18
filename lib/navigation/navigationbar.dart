import 'package:flutter/material.dart';
import 'package:furrfriendlyfinds/mainpages/home.dart';
import 'package:furrfriendlyfinds/mainpages/petmart.dart';
import 'package:furrfriendlyfinds/mainpages/profile.dart';
import 'package:furrfriendlyfinds/mainpages/service.dart';
import 'package:furrfriendlyfinds/util/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarPage> {
  int currentIndex = 0;

  final screens = [HomePage(), PetMartPage(), ServicePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: ColorConstants.mainGreen,
        selectedItemColor: ColorConstants.whiteMain,
        unselectedItemColor: ColorConstants.whiteMainT,
        showUnselectedLabels: false,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
            label: 'Home',
            backgroundColor: ColorConstants.mainGreen,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.basketShopping),
            label: 'Pet Mart',
            backgroundColor: ColorConstants.mainGreen,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.paw),
            label: 'Service',
            backgroundColor: ColorConstants.mainGreen,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.person),
            label: 'Profile',
            backgroundColor: ColorConstants.mainGreen,
          ),
        ],
      ),
    );
  }
}
