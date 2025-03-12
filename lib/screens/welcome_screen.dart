import 'package:flutter/material.dart';
import 'package:mentor_connect/components/carousel_page.dart';
import 'package:mentor_connect/components/custom_button.dart';
import 'package:mentor_connect/screens/home_screen.dart';
import 'package:mentor_connect/components/images_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController controller = PageController();
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(children: [
      SizedBox(
        height: size.height / 1.3,
        child: PageView(
          controller: controller,
          children: [
            CarouselPage(
              description: imageOfWelcomeScreen[0]["description"],
              image: imageOfWelcomeScreen[0]["image"],
            ),
            CarouselPage(
              description: imageOfWelcomeScreen[1]["description"],
              image: imageOfWelcomeScreen[1]["image"],
            ),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: imageOfWelcomeScreen.length,
            effect: const ExpandingDotsEffect(
              activeDotColor: Color(0xffED7E25),
              dotColor: Color(0xff18223D),
              dotHeight: 7,
              dotWidth: 12,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 45,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: CustomButton(
          label: 'Continuer',
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (buildContext) => const HomeScreen()));
          },
        ),
      ),
    ]));
  }
}
