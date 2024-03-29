import 'dart:ffi' as ffi;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key});
  final List<String> tittle = ["Breakfast", "Lunch", "Snack"];
  final List<String> subtittle = [
    "Bread,   Peanut butter, Apple",
    "Salmon,Mixed veggies, Avocado",
    "Recommended 800kcal"
  ];
  final List<String> kcal = ["525", "602"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton:
      backgroundColor: Color.fromARGB(255, 241, 245, 247),
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mediterranean diet',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                // IconButton.(onPressed: onPressed, icon: icon)
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle Details button press
                      },
                      style: TextButton.styleFrom(foregroundColor: Colors.blue),
                      child: Text(
                        'Details',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 0.6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Container(
                height: 265,
                // padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(90),
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  height: 50,
                                  width: 2,
                                  color: Colors.blue,
                                ),
                                customListTile(
                                  tittle: "Eaten",
                                  icon: Icons.rice_bowl_sharp,
                                  number: "1127",
                                  subtittlel: "Kcal",
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 50,
                                  width: 2,
                                  color: Colors.red,
                                ),
                                customListTile(
                                  tittle: "Burned",
                                  icon: CupertinoIcons.flame,
                                  number: "102",
                                  subtittlel: "Kcal",
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CircularPercentIndicator(
                                // linearGradient: LinearGradient(
                                //   colors: [
                                //     Colors.blue,
                                //     Colors.blue.shade200,
                                //   ],
                                // ),
                                center: Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "1503",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue.shade900),
                                    ),
                                    Text(
                                      "Kcal left",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                addAutomaticKeepAlive: true,
                                widgetIndicator: Container(
                                  color: Colors.white,
                                ),
                                progressColor: Colors.blue,
                                backgroundColor: Colors.blue.withOpacity(0.2),
                                percent: 0.4,
                                lineWidth: 14,
                                backgroundWidth: 6,
                                circularStrokeCap: CircularStrokeCap.round,
                                radius: 70,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30)
                          .copyWith(top: 5),
                      child: Divider(
                        color: Colors.blue.shade100.withOpacity(0.7),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomNutritionDetails(
                          tittle: "Carbs",
                          percentage: 0.8,
                          Subtittle: '12g left',
                          colors: [Colors.blue, Colors.blue.shade100],
                        ),
                        CustomNutritionDetails(
                          tittle: "Protin",
                          percentage: 0.6,
                          Subtittle: '30g left',
                          colors: [Colors.red, Colors.red.shade100],
                        ),
                        CustomNutritionDetails(
                          tittle: "fab",
                          percentage: 0.3,
                          Subtittle: '10g left',
                          colors: [
                            Colors.yellow.shade700,
                            Colors.yellow.shade100
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Meals today',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle Details button press
                      },
                      style: TextButton.styleFrom(foregroundColor: Colors.blue),
                      child: Text(
                        'Customise',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ).copyWith(bottom: 5),
                  width: 130,
                  height: 100,
                  child: Card(
                      color: Colors.orange.shade200,
                      elevation: 0.8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            tittle[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 70,
                            child: Text(
                              subtittle[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.3,
                                  wordSpacing: 0),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          index == 2
                              ? Card(
                            elevation: 3,
                            margin: EdgeInsets.symmetric(horizontal: 20)
                                .copyWith(right: 35),
                            color: Colors.white,
                            shape: CircleBorder(),
                            child: Container(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.orange.shade200,
                                    size: 30,
                                  )),
                            ),
                          )
                              : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${kcal[index]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.3,
                                    wordSpacing: 0),
                              ),
                              Text(
                                " kcal",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.3,
                                    wordSpacing: 0),
                              ),
                            ],
                          )
                        ],
                      )),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Body Measurement',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle Details button press
                      },
                      style: TextButton.styleFrom(foregroundColor: Colors.blue),
                      child: Text(
                        'Today',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        'My Diary',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Handle calendar icon action
          },
        ),
        IconButton(
          icon: Icon(Icons.calendar_today),
          onPressed: () {
            // Handle calendar icon action
          },
        ),
        Text(
          '15 May',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: () {
            // Handle forward arrow action
          },
        ),
      ],
    );
  }
}

class CustomNutritionDetails extends StatelessWidget {
  final String tittle;
  final double percentage;
  final String Subtittle;
  final List<Color> colors;
  CustomNutritionDetails({
    super.key,
    required this.tittle,
    required this.percentage,
    required this.Subtittle,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            tittle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        LinearPercentIndicator(
          barRadius: Radius.circular(10),
          // linearStrokeCap: LinearStrokeCap.round,
          width: 90.0,
          lineHeight: 8.0,
          backgroundColor: colors[1].withOpacity(0.3),
          percent: 0.8,
          // progressColor: Colors.blue.shade200,
          linearGradient: LinearGradient(
            colors: [colors[0], colors[1]],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 3),
          child: Text(
            Subtittle,
            style: TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}

class customListTile extends StatelessWidget {
  final IconData icon;
  final String tittle;
  final String number;
  final String subtittlel;

  const customListTile({
    super.key,
    required this.icon,
    required this.tittle,
    required this.number,
    required this.subtittlel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0, left: 25),
          child: Text(
            tittle,
            style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, left: 2),
                child: Icon(icon),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  number,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 5).copyWith(top: 8),
                child: Text(
                  subtittlel,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class HalfCutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 100),
      child: ClipPath(
        clipper: HalfCutClipper(),
        child: Container(
          color: Colors.white38,
          width: 200, // Adjust width as needed
          height: 200, // Adjust height as needed
        ),
      ),
    );
  }
}

class HalfCutClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 2); // Start at bottom left
    path.lineTo(size.width, size.height / 2); // Move to bottom right
    path.lineTo(0, size.height / 2); // Move to top right, cutting halfway
    path.lineTo(0, 0); // Move to top left
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // Clipper does not need to be updated
    }
}