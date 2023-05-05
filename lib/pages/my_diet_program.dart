import 'package:diet_ideas/pages/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyDietProgram extends StatefulWidget {
  const MyDietProgram({super.key});

  @override
  State<MyDietProgram> createState() => _MyDietProgramState();
}

class _MyDietProgramState extends State<MyDietProgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          //Rounded image leading
          leading: Container(
            padding: const EdgeInsets.all(5),
            width: 30,
            height: 30,
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Mask group.png'),
              radius: 30,
            ),
          ),
          backgroundColor: const Color(0xFFB8D8EB),
          title: Column(
            children: const [
              Text('Hello, Masfara!', style: TextStyle(color: Colors.black)),
              Text('Today Wed, Dec 28',
                  style: TextStyle(fontSize: 12, color: Color(0xFF0047BA))),
            ],
          ),
          centerTitle: true,
          actions: [
            IconButton(
              splashRadius: 25,
              icon: const Icon(
                Icons.notifications_outlined,
                color: Color(0xFF0047BA),
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsPage()),
                );
              },
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: const Color(0xFFD80000),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: const [
                            //Circular avator
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFFD80000),
                                radius: 25,
                                child: Text(
                                  "0%",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            //Text
                            Text(
                              "Oops! It looks like you have not \nregistered for a service programme!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color(0xFF6CCFAE),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 50, right: 50),
                      child: const Text(
                        "Book a Service Programme",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          //UppperCase text
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Health Progress",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color(0xFF0F46B3),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          //Circular avator
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFF0F46B3),
                              radius: 25,
                              child: Text(
                                "0%",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          //Text
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "You’re going to reach your goal by",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Not Available",
                                style: TextStyle(
                                    color: Color(0xFF6CCFAE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              //Edit Icon Button
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: double.infinity,
                    child: Card(
                        color: Color(0xFF70D2B0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Calorie Intake",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 50,
                                      child: CircleAvatar(
                                        radius: 45,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 40,
                                          backgroundColor: Color(0xFF70D2B0),
                                          child: Text(
                                            "0%",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: const [
                                        Text(
                                          "Today's Allowance",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("0 kcal",
                                            style: TextStyle(
                                                color: Color(0xFF0F46B3),
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Remaining Allowance",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("0 kcal",
                                            style: TextStyle(
                                                color: Color(0xFF0F46B3),
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )))),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Card(
                      color: Color(0xFFECABD4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        text: '0',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 35),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: ' kcal',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "Goal Weight",
                                          style: TextStyle(
                                              color: Color(0xFF0F46B3),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("0w left",
                                            style: TextStyle(
                                                color: Color(0xFF0F46B3),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    //Divider
                                    Container(
                                      height: 5,
                                      width: 150,
                                      color: Colors.white,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        text: '0',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 35),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: ' kcal',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "Current weight",
                                          style: TextStyle(
                                              color: Color(0xFF0F46B3),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("0%",
                                            style: TextStyle(
                                                color: Color(0xFF0F46B3),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    //Divider
                                    Container(
                                      height: 5,
                                      width: 150,
                                      color: Colors.white,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
