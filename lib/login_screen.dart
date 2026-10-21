import 'package:flutter/material.dart';
import 'package:space_app/colors/colors.dart';
import 'package:space_app/home_screen.dart';
import 'package:space_app/widgets/icon_space.dart';
import 'package:space_app/widgets/text_space.dart';


class LoginScreen extends StatefulWidget {
  static const routeName = 'login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/48e3ac1944450fcae09e68a9ccd37c17 1.png',
            height: 746,
            width: 740,
          ),
          Positioned(
            top: 300,
            left: 16,
            child: Text(
              'Explore \n The \n Universe',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 690,
            left: 16,
            bottom: 3,
            child: SizedBox(
              width: 335,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(AppColors.red),
                ),
                onPressed: () {},
                child: Row(
                  spacing: 180,
                  children: [
                    // Text(
                    //   'Explore',
                    //   style: TextStyle(
                    //     color: AppColors.white,
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
                      TextSpace(
                      textName: 'Explore',
                      fontsize: 20,
                      fontWeight: FontWeight.w600,
                      ),
                      IconSpace(
                        iconData: Icons.arrow_forward,
                        size: 22,
                        onPressed: () {
                            Navigator.pushNamed(context, HomeScreen.routeName);
                        setState(() {
                          
                        });
                        },
                      )
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
