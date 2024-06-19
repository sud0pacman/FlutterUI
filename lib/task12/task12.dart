import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:main_ui/task12/task12_colors.dart';

class Task12 extends StatefulWidget {
  const Task12({super.key});

  @override
  State<Task12> createState() => _Task12State();
}

class _Task12State extends State<Task12> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: myAppBar(),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                Text(
                  "Hello,",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: .1
                  ),
                ),
                const SizedBox(height: 30,),
                Text(
                  "Ansalem Inem",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    height: .1
                  ),
                ),


                const SizedBox(height: 10,),
                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      firstMainItem(context),
                      const SizedBox(width: 25,),
                      secondMainItem(context),
                      const SizedBox(width: 25,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

  Widget secondMainItem(BuildContext context) {
    return Column(
                        children: [
                          SizedBox(height: 100,),
                          Container(
                            height: (MediaQuery.of(context).size.width / 1.5),
                            width: MediaQuery.of(context).size.width / 1.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withAlpha(90),
                                  blurRadius: 4,
                                )
                              ]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                                  child: Image.asset(
                                    "assets/images/ic_drive.png",
                                    height: (MediaQuery.of(context).size.width / 1.5) / 6,
                                    width: (MediaQuery.of(context).size.width / 1.5) / 6,
                                  ),
                                ),
                            
                                infoIconsBar2(),
                                const SizedBox(height: 25,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Text(
                                    "Google Drive",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      height: .1
                                    ),
                                  ),
                                ),
                                
                                const SizedBox(height: 25,),
                          
                                memorySection2()
                              ],
                            ),
                          ),


                        ],
                      );
  }

  Widget firstMainItem(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.width / 1.5) + 30,
      width: MediaQuery.of(context).size.width / 1.5,
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.width / 1.5,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                color: Task12Colors.primary,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 60,),
                  infoIconsBar1(),

                  const SizedBox(height: 35,),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Dropbox",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          height: .1
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),

                  memorySection()
                ],
              ),
            ),
          ),


          Positioned(
            top: 0,
            left: 30,                      
            child: Image.asset(
              height: 66,
              width: 66,
              "assets/images/ic_dropbox.png"
            )
          ),
        ],
      ),
    );
  }


  Widget memorySection2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "5Gb",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  height: .1
                ),
              ),

              Text(
                "100Gb",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  height: .1
                ),
              ),
            ],
          ),


          SizedBox(height: 25,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color(0xff3c856a),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2.5),
                      bottomLeft: Radius.circular(2.5),
                    )
                  ),
                ),
              ),
              Expanded(
                flex: 90,
                child: Container(
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(2.5),
                      bottomRight: Radius.circular(2.5),
                    )
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }


  Widget memorySection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "60Gb",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: .1
                ),
              ),

              Text(
                "100Gb",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: .1
                ),
              ),
            ],
          ),


          SizedBox(height: 25,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  height: 5,
                  decoration: BoxDecoration(
                    color: Task12Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2.5),
                      bottomLeft: Radius.circular(2.5),
                    )
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(2.5),
                      bottomRight: Radius.circular(2.5),
                    )
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget infoIconsBar1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconItem1("assets/images/ic_trash_can.png"),
          iconItem1("assets/images/ic_copy.png"),
          iconItem1("assets/images/ic_database.png"),
        ],
      ),
    );
  }

  Widget iconItem1(String img)  {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xff235abf),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Image.asset(
        img,
        height: 24,
        width: 24,
        color: Colors.white70,
      ),
    );
  }


  Widget infoIconsBar2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconItem2("assets/images/ic_trash_can.png"),
          iconItem2("assets/images/ic_copy.png"),
          iconItem2("assets/images/ic_database.png"),
        ],
      ),
    );
  }


  Widget iconItem2(String img)  {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffbbbdc9),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Image.asset(
        img,
        height: 20,
        width: 20,
        color: Colors.black,
      ),
    );
  }

  Widget myAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "assets/images/ic_menu.png",
          height: 32,
          width: 32,
          color: Colors.black,
        ),

        Image.asset(
          "assets/images/ic_bell.png",
          height: 20,
          width: 20,
          color: Colors.grey,
        ),
      ],
    );
  }
}