import 'package:flutter/material.dart';
import 'package:space_app/colors/colors.dart';
import 'package:space_app/details_screen.dart';
import 'package:space_app/screens/Mercury_screen.dart';
import 'package:space_app/screens/earth_screen.dart';
import 'package:space_app/screens/jupiter_screen..dart';
import 'package:space_app/screens/mars_screen.dart';
import 'package:space_app/screens/venus_screen.dart';
import 'package:space_app/widgets/icon_space.dart';
import 'package:space_app/widgets/text_space.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> plantsScreens = [
    MercuryScreen(),
    VenusScreen(),
    EarthScreen(),
    MarsScreen(),
    JupiterScreen(),
  ];

  List<String> plantsName = ['Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/Rectangle 4.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0x0E0E0E00), Color(0x0E0E0E00)],
                    ),
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 20,
                  child: TextSpace(
                    textName: 'Which planet\n would you like to explore?',
                    fontsize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                plantsScreens[selectedIndex],
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconSpace(
                      iconData: Icons.arrow_back,
                      size: 20,
                      onPressed: () {
                        setState(() {
                          if (selectedIndex > 0) {
                            selectedIndex--;
                          }
                        });
                      },
                    ),
                    TextSpace(
                      textName: plantsName[selectedIndex],
                      fontsize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                    IconSpace(
                      iconData: Icons.arrow_forward,
                      size: 20,
                      onPressed: () {
                        setState(() {
                          if (selectedIndex < plantsScreens.length - 1) {
                            selectedIndex++;
                          }
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 12),
                SizedBox(
                  width: 340,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(AppColors.red),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          TextSpace(
                          textName: ' Explore ${plantsName[selectedIndex]}',
                          fontsize: 20,
                          fontWeight: FontWeight.w600,
                          ),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              DetailsScreen.routeName,
                              arguments: plantsScreens[selectedIndex],
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward,

                            color: AppColors.white,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
