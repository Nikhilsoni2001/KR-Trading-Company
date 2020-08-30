import 'package:flutter/material.dart';
import 'package:kr_trading_factory/components/roundedButton.dart';
import 'package:kr_trading_factory/constants.dart';
import 'package:kr_trading_factory/screens/splash_screen/components/splash_container.dart';
import 'package:kr_trading_factory/screens/welcome/welcome.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Welcome!", "image": "assets/images/splash_1.png"},
    {
      "text": "Get All Type Of KitchenWare items",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Everything At Wholesale Price",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]['image'],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            splashData.length, (index) => buildDot(index),
                        ),
                    ),
                    Spacer(flex: 3,),
                    RoundedButton(
                      text: 'CONTINUE',
                        press: () {
                        Navigator.pushNamed(context, WelcomeScreen.routeName);
                        },
                    ),
                    Spacer()
                  ],
                )),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
