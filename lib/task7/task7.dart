import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:main_ui/task7/task7_color.dart';

class Task7 extends StatefulWidget {
  const Task7({super.key});

  @override
  State<Task7> createState() => _Task7State();
}

class _Task7State extends State<Task7> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Task7Color.background,
        bottomNavigationBar: bottomBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20,),
              appBar(),
              const SizedBox(height: 20,),
              searchBar(),
              const SizedBox(height: 20,),
              foodsSection(),
              const SizedBox(height: 30,),
              foodsSection(),
              const SizedBox(height: 25,),
              definitionsSection(context),
              const SizedBox(height: 20,),
              popularRestaurant(),
              const SizedBox(height: 20,),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 15,),
                    popularCard('assets/images/food_hamburger.png'),
                    const SizedBox(width: 35,),
                    popularCard('assets/images/food_sandwich.png'),
                    const SizedBox(width: 35,),
                    popularCard('assets/images/food_pizza.png'),
                    const SizedBox(width: 15,),
                    popularCard('assets/images/food_hamburger.png'),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }

  Widget popularCard(
    String img
  ) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            img,
            fit: BoxFit.fill,
          ),

          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: 42,
              width: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Task7Color.background,
                border: Border.all(width: 2, color: Task7Color.seeLightGreen)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Image.asset('assets/images/heart.png', ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget popularRestaurant() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Text(
        'Popular Resturant',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget definitionsSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            definitionCard(context, Task7Color.seeLightGreen),
            const SizedBox(
              width: 8,
            ),
            definitionCard(context, Task7Color.green),
            const SizedBox(
              width: 8,
            ),
            definitionCard(context, Task7Color.yellow),
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
        borderRadius: const  BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Get up to',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    '30% Off',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        height: .0),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'on all food',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600, height: .8),
                  ),
                  const Text(
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
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: const Text(
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

            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: Image.asset('assets/images/pasta.png', fit: BoxFit.cover,),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget foodsSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 20,),
          foodItem('assets/images/food_hamburger.png', "Burger"),
          const SizedBox(width: 20,),
          foodItem('assets/images/food_pizza.png', "Pizza"),
          const SizedBox(width: 20,),
          foodItem('assets/images/food_pasta.png', "Pasta"),
          const SizedBox(width: 20,),
          foodItem('assets/images/food_sandwich.png', "Sandwich"),
          const SizedBox(width: 20,),
        ],
      ),
    );
  }

  Widget foodItem(
    String img,
    String name,
  ) {
    return Column(
      children: <Widget>[
        Container(
          width: 75,
          height: 75,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Task7Color.cardColor,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              width: 65,
              height: 65,
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w600
          ),
        )
      ],
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
                color: Task7Color.seeGray,
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
      padding: const EdgeInsets.only(bottom: 8, left: 15, right: 15),
      child: GNav(
        selectedIndex: 1,
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
          color: Task7Color.inactiveBottomBarIcon, // unselected icon color
          activeColor:
              Task7Color.activeBottomBarIcon, // selected icon and text color
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