import 'package:flutter/material.dart';
import 'package:space_app/widgets/icon_space.dart';
import 'package:space_app/widgets/image_space.dart';
import 'package:space_app/widgets/text_space.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = 'details';

  const DetailsScreen({super.key});
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final Widget plantsScreens =
        ModalRoute.of(context)!.settings.arguments as Widget;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ImageSpace(imagePath: 'Rectangle 4.png', width: 375, height: 144, fit: BoxFit.cover),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withValues(alpha: 40),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 20,
                  child: TextSpace(
                    textName: 'Earth: Our Blue Marble',
                    fontsize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: IconSpace(
                    iconData: Icons.arrow_back,
                    size: 20,
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                ),
              ],
            ),
           SingleChildScrollView(
                padding: const EdgeInsets.all(22.0),
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    plantsScreens,
                    TextSpace(
                      textName: 'About',
                      fontsize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    TextSpace(
                      textName: 'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earths magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns',
                      fontsize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white.withValues(alpha: 0.3),
                    ),
                    TextSpace(
                      textName: 'Distance from Sun (km) : 149598026 ',
                      fontsize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    TextSpace(
                      textName: 'Length of Day (hours) : 23.93',
                      fontsize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    TextSpace(
                      textName: 'Radius (km) : 6371',
                      fontsize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    TextSpace(
                      textName: 'Mass (kg) : 5.972 × 10²⁴',
                      fontsize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    TextSpace(
                      textName: 'Gravity (m/s²) : 9.81',
                      fontsize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    TextSpace(
                      textName: 'Surface Area (km²) : 5.10 × 10⁸',
                      fontsize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}
