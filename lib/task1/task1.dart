import 'package:flutter/material.dart';
import 'package:main_ui/task1/light_color.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: LightColor.purple,
        unselectedItemColor: Colors.grey.shade300,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: [
          bottombarIcon(Icons.home),
          bottombarIcon(Icons.star_border),
          bottombarIcon(Icons.book),
          bottombarIcon(Icons.person),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            myTopBar(context),
            const SizedBox(
              height: 20,
            ),
            categoryItem('Featured', LightColor.orange),
            const SizedBox(
              height: 20,
            ),
            sectionA(),
            const SizedBox(
              height: 20,
            ),
            categoryItem('Featured', LightColor.purple),
            const SizedBox(
              height: 20,
            ),


            SizedBox(
              height: 180,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    myCard4(
                        context,
                        'assets/images/avatar2.jpg',
                        LightColor.seeBlue,
                        LightColor.darkseeBlue,
                        LightColor.seeBlue,
                        "Englishfor career development"),
                    SizedBox(
                      width: 15,
                    ),
                    myCard5(
                        context,
                        'assets/images/avatar5.jpg',
                        Colors.white,
                        LightColor.lightpurple,
                        LightColor.lightpurple,
                        "Bussiness foundation"),
                
                        SizedBox(
                      width: 15,
                    ),
                    myCard6(
                      context,
                      'assets/images/avatar3.jpg',
                      Colors.white,
                      LightColor.lightOrange,
                      LightColor.lightOrange,
                      "Bussiness foundation"
                    ),

                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget myCard6(
    BuildContext context,
    String image,
    Color color1,
    Color color2,
    Color chipColor,
    String infoText,
  ) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: Container(
        height: 180,
        width: width * .32,
        decoration: BoxDecoration(
          color: color1,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 20,
              left: 15,
              child: myCircleImage(40, image)
            ),

            Positioned(
              top: 15,
              right: 15,
              child: myCircle(10, LightColor.yellow)
            ),

            Positioned(
              top: 30,
              right: -55,
              child: myCircle(
                120, color2.withAlpha(100)
              )
            ),

            Positioned(
              bottom: 0,
              left: 10,
              child: Container(
                height: 95,
                color: color1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: _cardInfo(context, infoText, '8 courses', LightColor.darkBlue, color2),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget myCard5(
    BuildContext context,
    String image,
    Color color1,
    Color color2,
    Color chipColor,
    String infoText,
  ) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        child: Container(
          height: 180,
          width: width * .32,
          decoration: BoxDecoration(
            color: color1,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: -100,
                  left: -45,
                  child: myCircle(140, color2.withAlpha(100))),
              Positioned(top: 25, left: 15, child: myCircleImage(40, image)),
              Positioned(
                  top: 20, right: 25, child: myCircle(15, LightColor.yellow)),
              Positioned(top: 45, right: -50, child: myCircle(100, color2)),
              Positioned(
                  top: 58,
                  right: -40,
                  child: myCircle(75, LightColor.lightseeBlue)),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    color: color1,
                    child: Column(
                      children: [
                        _cardInfo(context, infoText, '8 cources',
                            LightColor.darkBlue, color2,
                            isPrimaryCard: false),
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }

  Widget myCard4(
    BuildContext context,
    String image,
    Color color1,
    Color color2,
    Color chipColor,
    String infoText,
  ) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: Container(
        height: 180,
        width: width * .32,
        color: color1,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                right: -20,
                top: -125,
                child: myCircle(220, LightColor.lightseeBlue)),
            Positioned(
                top: -40,
                right: -65,
                child: myCircle(100, Colors.transparent,
                    borderColor: Colors.white, borderWidth: 2)),
            Positioned(
                left: 40, top: 15, child: myCircle(25, LightColor.yellow)),
            Positioned(top: 20, left: 15, child: myCircleImage(40, image)),
            Positioned(
                bottom: -110,
                right: 10,
                child: myCircle(180, Colors.transparent,
                    borderColor: color2, borderWidth: 30)),
            Positioned(
                bottom: 10,
                left: 10,
                child: SizedBox(
                  child: Column(
                    children: [
                      _cardInfo(context, infoText, '8 cources', Colors.white,
                          Colors.white,
                          isPrimaryCard: false),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget sectionA() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          myCard1(
              context,
              'assets/images/avatar1.jpg',
              LightColor.orange,
              LightColor.lightOrange,
              Colors.white,
              'Find the right degree for you'),
          const SizedBox(
            width: 15,
          ),
          myCard2(
              context,
              'assets/images/avatar1.jpg',
              Colors.white,
              LightColor.seeBlue,
              LightColor.seeBlue,
              'Become a data scientist'),
          const SizedBox(
            width: 15,
          ),
          myCard3(
              context,
              'assets/images/avatar1.jpg',
              Colors.white,
              LightColor.lightOrange,
              LightColor.lightOrange,
              'Become a data scientist'),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }

  Widget myCard3(
    BuildContext context,
    String img,
    Color color1,
    Color color2,
    Color chipColor,
    String infoText,
  ) {
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Container(
        height: 180,
        width: width * .32,
        decoration: BoxDecoration(
          color: color1,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
                top: -100,
                left: -40,
                child: myCircle(140, LightColor.orange.withAlpha(100))),
            Positioned(
                top: 30, right: 20, child: myCircle(20, LightColor.yellow)),
            Positioned(
                top: 50,
                right: -25,
                child: myCircle(45, LightColor.lightOrange)),
            Positioned(
                top: 25,
                left: 15,
                child: myCircleImage(40, 'assets/images/avatar3.jpg')),
            Positioned(
                bottom: 0,
                child: Container(
                  color: color1,
                  height: 90,
                  width: width * .32,
                )),
            Positioned(
                bottom: 10,
                left: 10,
                child: SizedBox(
                  child: Column(
                    children: [
                      _cardInfo(context, infoText, '8 cources',
                          LightColor.titleTextColor, chipColor,
                          isPrimaryCard: false),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget myCard2(
    BuildContext context,
    String img,
    Color color1,
    Color color2,
    Color chipColor,
    String infoText,
  ) {
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Container(
        height: 180,
        width: width * .32,
        decoration: BoxDecoration(
          color: color1,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
                top: -55,
                right: -55,
                child: myCircle(125, Colors.transparent,
                    borderColor: color2, borderWidth: 30)),
            Positioned(
                top: 39,
                right: -40,
                child: myCircle(80, LightColor.lightseeBlue)),
            Positioned(
                top: 25,
                left: 15,
                child: myCircleImage(40, 'assets/images/avatar2.jpg')),
            Positioned(
                bottom: 0,
                child: Container(
                  height: 100,
                  width: width * .32,
                  color: color1,
                )),
            Positioned(
                bottom: 10,
                left: 10,
                child: SizedBox(
                  child: Column(
                    children: [
                      _cardInfo(context, infoText, '8 cources',
                          LightColor.titleTextColor, chipColor,
                          isPrimaryCard: false),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget myCard1(BuildContext context, String img, Color color1, Color color2,
      Color chipColor, String chipText1) {
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: Container(
        height: 180,
        width: width * .32,
        color: color1,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(bottom: -50, child: myCircle(175, color2)),
            Positioned(
                top: 30,
                right: -40,
                child: myCircle(80, Colors.transparent,
                    borderColor: Colors.white, borderWidth: 2)),
            Positioned(top: 20, left: 30, child: myCircle(30, color2)),
            Positioned(top: 25, left: 15, child: myCircleImage(40, img)),
            Positioned(
                bottom: 10,
                left: 10,
                child: SizedBox(
                  child: Column(
                    children: [
                      _cardInfo(context, chipText1, '8 cources',
                          LightColor.titleTextColor, chipColor,
                          isPrimaryCard: false),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget myCard(
    BuildContext context,
    String img,
    Color color1,
    Color color2,
    Color chipColor,
    String infoText,
  ) {
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Container(
        height: 180,
        width: width * .32,
        decoration: BoxDecoration(
          color: color1,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
                top: -55,
                right: -55,
                child: myCircle(125, Colors.transparent,
                    borderColor: LightColor.seeBlue, borderWidth: 30)),
            Positioned(
                top: 39,
                right: -40,
                child: myCircle(80, LightColor.lightseeBlue)),
            Positioned(
                top: 25,
                left: 15,
                child: myCircleImage(40, 'assets/images/avatar2.jpg')),
            Positioned(
                bottom: 0,
                child: Container(
                  height: 100,
                  width: width * .32,
                  color: color1,
                )),
            Positioned(
                bottom: 10,
                left: 10,
                child: SizedBox(
                  child: Column(
                    children: [
                      _cardInfo(context, infoText, '8 cources',
                          LightColor.titleTextColor, chipColor,
                          isPrimaryCard: false),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget _cardInfo(BuildContext context, String title, String courses,
      Color textColor, Color primary,
      {bool isPrimaryCard = false}) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width * .32,
            alignment: Alignment.topCenter,
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: isPrimaryCard ? Colors.white : textColor,
              ),
            ),
          ),
          SizedBox(height: 5),
          chip(courses, primary, height: 5, isPrimaryCard: isPrimaryCard)
        ],
      ),
    );
  }

  Widget myCircleImage(
    double height,
    String img,
  ) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(height)),
      child: Image.asset(height: height, width: height, fit: BoxFit.cover, img),
    );
  }

  Widget myTopBar(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
        width: width,
        height: 200,
        color: LightColor.purple,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                top: 30,
                right: -100,
                child: myCircle(300, LightColor.lightpurple)),
            Positioned(
                top: -100,
                left: -45,
                child: myCircle(width * .5, LightColor.darkpurple)),
            Positioned(
                top: -150,
                right: -30,
                child: myCircle(width * .7, Colors.transparent,
                    borderColor: Colors.white38, borderWidth: 2)),
            Positioned(
                top: 40,
                left: 0,
                child: Container(
                  width: width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Text(
                            'Search courses',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                          Spacer(),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                      Text(
                        'Type Something...',
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget myCircle(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: borderColor, width: borderWidth)),
    );
  }

  BottomNavigationBarItem bottombarIcon(IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), label: "");
  }

  Widget categoryItem(
    String title,
    Color primary,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: LightColor.titleTextColor, fontWeight: FontWeight.bold),
          ),
          chip('See all', primary)
        ],
      ),
    );
  }

  Widget chip(String text, Color textColor,
      {double height = 0, bool isPrimaryCard = false}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: height),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: textColor.withAlpha(isPrimaryCard ? 200 : 50),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 12),
      ),
    );
  }

  Positioned _smallContainer(Color primary, double top, double left,
      {double radius = 10}) {
    return Positioned(
        top: top,
        left: left,
        child: CircleAvatar(
          radius: radius,
          backgroundColor: primary.withAlpha(255),
        ));
  }
}
