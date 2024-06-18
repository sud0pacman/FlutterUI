import 'package:flutter/material.dart';
import 'package:main_ui/task6/task6_color.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Task6 extends StatefulWidget {
  const Task6({super.key});

  @override
  State<Task6> createState() => _Task6State();
}

class _Task6State extends State<Task6> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Task6Color.background,
        bottomNavigationBar: bottomBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              appBar(),
              const SizedBox(
                height: 20,
              ),
              searchBar(),
              const SizedBox(
                height: 20,
              ),
              foodSectionA(context),
              const SizedBox(
                height: 20,
              ),
              foodSectionB(context),
              const SizedBox(
                height: 20,
              ),
              definitionsSection(context),
              const SizedBox(
                height: 20,
              ),
              popularRestaurant(),
            ],
          ),
        ),
      ),
    );
  }

  Widget popularRestaurant() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Text(
        'Popular Resturant',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget definitionsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            definitionCard(context, Task6Color.seeLightGreen),
            SizedBox(
              width: 8,
            ),
            definitionCard(context, Task6Color.green),
            SizedBox(
              width: 8,
            ),
            definitionCard(context, Task6Color.yellow),
          ],
        ),
      ),
    );
  }

  Widget definitionCard(BuildContext context, Color background) {
    var totalWidth = MediaQuery.of(context).size.width;
    var width = (totalWidth - ((totalWidth * .10) * 2.7));

    return Container(
      width: width,
      height: 175,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Get up to',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '30% Off',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  height: .0),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'on all food',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600, height: .8),
            ),
            Text(
              "orders",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Container(
              height: 42,
              width: width * .4,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Text(
                'Buy Now',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget foodSectionB(
    BuildContext context,
  ) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 135,
      child: Row(
        children: [
          SizedBox(
            width: width * .03,
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            child: Container(
              color: Task6Color.cardColor,
              height: 135,
              width: width * .27,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  const Positioned(
                    left: 10,
                    top: 10,
                    child: Text(
                      "Food",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 10,
                    child: Text(
                      "30 min",
                      style: TextStyle(
                        color: Colors.black.withAlpha(950),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -40,
                    right: -(width * .27) / 3,
                    child: Container(
                      width: width * .27,
                      height: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/food_plate.png'))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: width * .02,
          ),
          Container(
            height: 135,
            width: width * .65,
            decoration: BoxDecoration(
                color: Task6Color.cardColor,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Siver Membership',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "Get Free Delivery On All Orders",
                    style: TextStyle(
                      color: Colors.black.withAlpha(950),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget foodSectionA(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 135,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            sectionCard(context, "Food", 'assets/images/food_fastfood1.png'),
            sectionCard(context, "Mart", 'assets/images/food_basket.png'),
            sectionCard(context, "Courier", 'assets/images/box.png'),
          ],
        ),
      ),
    );
  }

  Widget sectionCard(
    BuildContext context,
    String name,
    String image,
  ) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      child: Container(
        padding: EdgeInsets.all(8.0),
        color: Task6Color.cardColor,
        height: 135,
        width: width * .29,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "30 min",
                        style: TextStyle(
                          color: Colors.black.withAlpha(930),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(flex: 3, child: Image.asset(fit: BoxFit.cover, image)),
          ],
        ),
      ),
    );
  }

  Widget searchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.black.withAlpha(120)),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Label here...',
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.mic, color: Colors.black),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            color: Colors.black,
            width: 2,
            height: 26,
          ),
          Icon(Icons.filter_list_alt, color: Colors.black),
        ],
      ),
    );
  }

  Widget appBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            'Deliver Now',
            style: TextStyle(
                color: Task6Color.seeGray,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                height: 0.1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Noida 44',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 42,
                color: Colors.black.withAlpha(130),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget bottomBar() {
    return Container(
      color: Colors.white,
      height: 60,
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(bottom: 8, left: 15, right: 15),
      child: GNav(
          backgroundColor: Colors.white,
          // rippleColor: Colors.grey, // tab button ripple color when pressed
          // hoverColor: Colors.grey, // tab button hover color
          // haptic: true, // haptic feedback
          // tabBorderRadius: 15,
          tabActiveBorder:
              Border.all(color: Colors.black, width: 1), // tab button border
          // tabBorder: Border.all(color: Colors.white, width: 1), // tab button border
          // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
          // curve: Curves.easeOutExpo, // tab animation curves
          // duration: Duration(milliseconds: 500), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Task6Color.inactiveBottomBarIcon, // unselected icon color
          activeColor:
              Task6Color.activeBottomBarIcon, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: Colors.black, // selected tab background color
          padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: 10), // navigation bar padding
          tabs: [
            GButton(
              text: 'Home',
              icon: Icons.home,
            ),
            GButton(
              icon: Icons.fastfood,
              text: 'Food',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
            GButton(
              icon: Icons.account_tree_outlined,
              text: 'Settings',
            ),
          ]),
    );
  }
}
