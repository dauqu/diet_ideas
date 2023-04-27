import 'package:diet_ideas/pages/notifications.dart';
import 'package:flutter/material.dart';

class Tracker extends StatefulWidget {
  const Tracker({super.key});

  @override
  State<Tracker> createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
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
        title: const Text('Hello, Masfara!',
            style: TextStyle(color: Colors.black)),
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
                  builder: (context) => const NotificationsPage(),
                ),
              );
            },
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color(0xFF0F46B3),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const CircleAvatar(
                        radius: 30,
                        child: Placeholder(),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Service Program 1',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Text('Exp : 31 Dec 2022',
                            style: TextStyle(
                                color: Color(0xFF40D4AF), fontSize: 22)),
                      ],
                    ),
                    const SizedBox(width: 100),
                    const Icon(Icons.edit, color: Colors.white, size: 30),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                  children: [
                    Card(
                      margin: const EdgeInsets.all(0),
                      color: Color(0xFF0F46B3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/plan 1.png',
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Meal Plan',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(0),
                      color: const Color(0xFFF06E7F),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/scale 1.png',
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Weight Tracker',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(0),
                      // color: Color(0xFFF06E7F),
                      color: Color(0xFF6CCFAE),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Group.png',
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Blood Component Tracker',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
