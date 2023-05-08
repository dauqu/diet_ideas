import 'package:diet_ideas/pages/new_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WeightTracker extends StatefulWidget {
  const WeightTracker({super.key});

  @override
  State<WeightTracker> createState() => _WeightTrackerState();
}

class _WeightTrackerState extends State<WeightTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              splashRadius: 20,
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: const Text('Weight Tracker',
                style: TextStyle(color: Colors.black)),
            centerTitle: true,
            backgroundColor: Colors.white),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(child: Image.asset("assets/images/Group 101909.png")),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewWeight()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0F46B3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text('New Weight'),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6CCFAE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text('Set Weight Goal'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  //Full width
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "December 2022",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: const Text("31 Dec, Sat",
                        style: TextStyle(fontSize: 20)),
                    subtitle: Row(
                      children: const [
                        //Icon
                        Icon(Icons.arrow_downward,
                            size: 10, color: Colors.green),
                        Text("70 kg"),
                      ],
                    ),
                    trailing: const Text(
                      "58kg",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    )),
                ListTile(
                    title: const Text("31 Dec, Sat",
                        style: TextStyle(fontSize: 20)),
                    subtitle: Row(
                      children: const [
                        //Icon
                        Icon(Icons.arrow_downward,
                            size: 10, color: Colors.green),
                        Text("70 kg"),
                      ],
                    ),
                    trailing: const Text(
                      "58kg",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    )),
                ListTile(
                    title: const Text("31 Dec, Sat",
                        style: TextStyle(fontSize: 20)),
                    subtitle: Row(
                      children: const [
                        //Icon
                        Icon(Icons.arrow_downward,
                            size: 10, color: Colors.green),
                        Text("70 kg"),
                      ],
                    ),
                    trailing: const Text(
                      "58kg",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    )),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  //Full width
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "November 2022",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: const Text("30 Nov, Sat",
                        style: TextStyle(fontSize: 20)),
                    subtitle: Row(
                      children: const [
                        //Icon
                        Icon(Icons.arrow_downward,
                            size: 10, color: Colors.green),
                        Text("70 kg"),
                      ],
                    ),
                    trailing: const Text(
                      "58kg",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    )),
                ListTile(
                    title: const Text("30 Nov, Sat",
                        style: TextStyle(fontSize: 20)),
                    subtitle: Row(
                      children: const [
                        //Icon
                        Icon(Icons.arrow_downward,
                            size: 10, color: Colors.green),
                        Text("70 kg"),
                      ],
                    ),
                    trailing: const Text(
                      "58kg",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    )),
                ListTile(
                    title: const Text("30 Nov, Sat",
                        style: TextStyle(fontSize: 20)),
                    subtitle: Row(
                      children: const [
                        //Icon
                        Icon(Icons.arrow_downward,
                            size: 10, color: Colors.green),
                        Text("70 kg"),
                      ],
                    ),
                    trailing: const Text(
                      "58kg",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
          ),
        ));
  }
}
