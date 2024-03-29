import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imagePath = 'lib/assets/images/avatar.jpg';
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 234, 217),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Handle menu button press
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Handle search button press
              },
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(
                  255, 246, 180, 58), // Replace with your desired color
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: Container(
              height: 120,
              child: Center(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          CircularPercentIndicator(
                            backgroundColor: Color.fromARGB(255, 246, 180, 58),
                            progressColor: Colors.pink.shade400,
                            // fillColor: Colors.red,
                            // arcBackgroundColor: ,
                            circularStrokeCap: CircularStrokeCap.round,
                            radius: 46.0,
                            lineWidth: 6.0,
                            percent:
                            0.7, // Set the desired percentage (0.0 to 1.0)

                            center: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                                image: DecorationImage(
                                  image: AssetImage(imagePath),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ravikant Singh',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Software Developer',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Add your container content here
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 5),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'My Task',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Icon(
                    Icons.alarm,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'To Do',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '5 tasks now. 1 started',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey, // Use grey for the subtitle
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 246, 180, 58),
                  ),
                  child: Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'In Progress',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '1 tasks now. 1 started',
                  style: TextStyle(
                    fontSize: 15,

                    fontWeight: FontWeight.bold,
                    color: Colors.grey, // Use grey for the subtitle
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Done',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '18 tasks now. 13 started',
                  style: TextStyle(
                    fontSize: 15,

                    fontWeight: FontWeight.bold,
                    color: Colors.grey, // Use grey for the subtitle
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 5),
                    child: Text(
                      'Active Projects',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer()
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5, // Change the itemCount as needed
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            elevation: 4,
                            margin: EdgeInsets.all(10),
                            child: SizedBox(
                              height: 220,
                              width: 200,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20)
                                    .copyWith(bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '9 hour progress',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white.withOpacity(0.70),
                                      ),
                                    ),
                                    Text(
                                      'Medical App',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Center(
                                      child: CircularPercentIndicator(
                                        circularStrokeCap: CircularStrokeCap.round,
                                        radius: 50,
                                        lineWidth: 8,
                                        percent:
                                        0.25, // Set the desired percentage (0.0 to 1.0)
                                        center: Text(
                                          '25%',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        backgroundColor: Colors.white
                                            .withOpacity(0.25), // Change as desired
                                        progressColor:
                                        Colors.white, // Change as desired
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ].reversed.toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10), // Add some spacing between the cards
                        Expanded(
                          child: Card(
                            color: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            elevation: 4,
                            margin: EdgeInsets.all(10),
                            child: SizedBox(
                              height: 220,
                              width: 200,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20)
                                    .copyWith(bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '20 hours progress',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white.withOpacity(0.70),
                                      ),
                                    ),
                                    Text(
                                      'Making History Notes',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Center(
                                      child: CircularPercentIndicator(
                                        circularStrokeCap: CircularStrokeCap.round,
                                        radius: 50,
                                        lineWidth: 8,
                                        percent:
                                        0.60, // Set the desired percentage (0.0 to 1.0)
                                        center: Text(
                                          '60%',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        backgroundColor: Colors.white
                                            .withOpacity(0.25), // Change as desired
                                        progressColor:
                                        Colors.white, // Change as desired
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ].reversed.toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ]),
        ),
    );
    }
}