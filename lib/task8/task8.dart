import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:main_ui/task8/task8_color.dart';

class Task8 extends StatefulWidget {
  const Task8({super.key});

  @override
  State<Task8> createState() => _Task8State();
}

class _Task8State extends State<Task8> {
  List<String> sections = ["Apple", "Banana", "Papaya", "Mango", "Greps"];
  int selectedIndex = 0;

  List<String> images = [
    "assets/images/fruit_banana.png",
    "assets/images/fruit_mango.jpg",
    "assets/images/fruit_orange.png",
    "assets/images/fruit_grape.jpg",
    "assets/images/fruit_tranide.jpg",
    "assets/images/fruit_grape.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Task8Color.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.arrow_back),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  topBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  chipBar(),
                  const SizedBox(
                    height: 25,
                  ),
                  fruitListSection(context),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: Container(
                  height: 56,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                  child: Text(
                    "Add To Card",
                    style: TextStyle(
                      color: Task8Color.background,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget fruitListSection(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.65, // Set a height for the GridView
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            // crossAxisSpacing: 8.0, // Spacing between columns
            mainAxisSpacing: 8.0, // Spacing between rows
            childAspectRatio: 0.65, // Aspect ratio of each item
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return fruitItem(context, images[index]);
          },
        ),
      ),
    );
  }

  Widget fruitItem(BuildContext context, String img) {
    return Container(
      height: 250,
      // width: MediaQuery.of(context).size.width / 2.2,
      color: Task8Color.background,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width / 2.2,
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                  color: Color(0xffeff3f6),
                ),
                child: Container(
                  // height: 180,
                  decoration: BoxDecoration(
                    // color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(img),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                right: 15,
                child: Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Task8Color.seeLightGreen,
                      width: 2,
                    ),
                  ),
                  child: Image.asset('assets/images/plus.png'),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Ratnagiri Alphonso Mangoes',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "₽ 500 | Box",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                height: .1,
              ),
            ),
          ),

          SizedBox(height: 20,)
        ],
      ),
    );
  }

  Widget chipBar() {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: sections.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 0,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              height: 35,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: index == selectedIndex ? Colors.grey : Colors.white,
                    blurRadius: 3,
                    offset: Offset.zero,
                  )
                ],
                color: selectedIndex == index
                    ? Task8Color.background
                    : Color(0xff505a61),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                sections[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex != index
                      ? Task8Color.background
                      : Colors.black,
                  fontSize: 12,
                  height: .1,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget topBar() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Fruits",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              height: .1,
            ),
          ),
        ),
        Icon(
          Icons.arrow_drop_down,
          size: 26,
          color: Colors.black,
        ),
      ],
    );
  }
}
