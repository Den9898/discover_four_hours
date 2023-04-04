import 'package:discover_four_hours/wighets/App_text.dart';
import 'package:discover_four_hours/wighets/app_buttons.dart';
import 'package:discover_four_hours/wighets/app_larhe_text.dart';
import 'package:discover_four_hours/wighets/responsive_button.dart';
import 'package:flutter/material.dart';

class DetaliPage extends StatefulWidget {
  const DetaliPage({Key? key}) : super(key: key);

  @override
  State<DetaliPage> createState() => _DetaliPageState();
}

class _DetaliPageState extends State<DetaliPage> {
  int gottenStars = 3;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('images/99.jpeg'), fit: BoxFit.cover),
              ),
            )),
            Positioned(
              left: 20,
              top: 70,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 330,
              child: Container(
                padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(text: 'Yosemite'),
                        AppLargeText(text: '\$ 240'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.deepPurple,
                        ),
                        AppText(text: 'USA, California'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return IconButton(
                                icon: (gottenStars < index
                                    ? const Icon(Icons.star, color: Colors.orangeAccent)
                                    : const Icon(Icons.star, color: Colors.black)),
                                onPressed: () {});
                          }),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        AppText(text: '(4.0)')
                      ],
                    ),
                    AppLargeText(
                      text: 'People',
                      size: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(text: "Number of people in your group"),
                    SizedBox(height: 10),
                    Wrap(
                      children: List.generate(
                        5,
                        (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: AppButtons(
                                size: 50,
                                color: selectedIndex == index ? Colors.white : Colors.black,
                                backgroundColor: selectedIndex == index ? Colors.black : Colors.white,
                                borderColor: selectedIndex == index ? Colors.black : Colors.grey,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    AppLargeText(
                      text: 'Description',
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(height: 10),
                    AppLargeText(
                      text: 'Description',
                      color: Colors.black,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                    size: 60,
                    color: Colors.black,
                    backgroundColor: Colors.white,
                    borderColor: Colors.black,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(width: 20),
                  Responsive_button(
                    isResponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
