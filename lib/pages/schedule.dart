import 'package:diet_ideas/pages/appointment_booking.dart';
import 'package:diet_ideas/pages/reschedule_appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Appointment Schedule',
              style: TextStyle(color: Colors.black)),
          centerTitle: false,
          leading: const Text(""),
          leadingWidth: 0,
          bottom: TabBar(
            dividerColor: Colors.black,
            indicatorPadding: const EdgeInsets.all(5),
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFF0F46B3),
            ),
            overlayColor: MaterialStateProperty.all(Colors.white),
            unselectedLabelColor: Colors.black,
            tabs: const [
              Tab(
                text: 'Scheduled',
              ),
              Tab(
                text: 'History',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Scheduled(),
            History(),
          ],
        ),
      ),
    );
  }
}

class Scheduled extends StatefulWidget {
  const Scheduled({super.key});

  @override
  State<Scheduled> createState() => _ScheduledState();
}

class _ScheduledState extends State<Scheduled> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              color: const Color(0xFF0047BA),
              child: Container(
                padding: const EdgeInsets.all(10),
                //Full width
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Cut-off date",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Dec 20, 2022",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      "Completed :  1 / 4 Sessions",
                      style: TextStyle(color: Color(0xFF70D2B0), fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              color: const Color(0xFFE6F1F8),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Date", style: TextStyle(fontSize: 12)),
                            Text("Dec 20, 2022",
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Time", style: TextStyle(fontSize: 12)),
                            Text("10 : 00 am", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Dietitian / Nutritionist",
                                style: TextStyle(fontSize: 12)),
                            Text("Dr. John Doe",
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Service Name"),
                            Text("Service Program 1",
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RescheduleAppointment()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: const Color(0xFF0047BA),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text("Reschedule"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              color: const Color(0xFFE6F1F8),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Date", style: TextStyle(fontSize: 12)),
                            Text("Dec 20, 2022",
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Time", style: TextStyle(fontSize: 12)),
                            Text("10 : 00 am", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Dietitian / Nutritionist",
                                style: TextStyle(fontSize: 12)),
                            Text("Dr. John Doe",
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Service Name"),
                            Text("Service Program 2",
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RescheduleAppointment()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: const Color(0xFF0047BA),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text("Reschedule"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AppointmentBooking()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      primary: const Color(0xFF70D2B0),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text("NEW APPOINTMENT"),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            color: const Color(0xFFE6F1F8),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Date", style: TextStyle(fontSize: 12)),
                          Text("Dec 20, 2022", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Time", style: TextStyle(fontSize: 12)),
                          Text("10 : 00 am", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Dietitian / Nutritionist",
                              style: TextStyle(fontSize: 12)),
                          Text("Dr. John Doe", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Service Name"),
                          Text("Service Program 2",
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(width: 10),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) =>
                      //               const RescheduleAppointment()),
                      //     );
                      //   },
                      //   style: ElevatedButton.styleFrom(
                      //     elevation: 0,
                      //     primary: const Color(0xFF0047BA),
                      //     onPrimary: Colors.white,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(5),
                      //     ),
                      //   ),
                      //   child: const Text("Reschedule"),
                      // )
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            color: const Color(0xFFE6F1F8),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Date", style: TextStyle(fontSize: 12)),
                          Text("Dec 20, 2022", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Time", style: TextStyle(fontSize: 12)),
                          Text("10 : 00 am", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Dietitian / Nutritionist",
                              style: TextStyle(fontSize: 12)),
                          Text("Dr. John Doe", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Service Name"),
                          Text("Service Program 2",
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(width: 10),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) =>
                      //               const RescheduleAppointment()),
                      //     );
                      //   },
                      //   style: ElevatedButton.styleFrom(
                      //     elevation: 0,
                      //     primary: const Color(0xFF0047BA),
                      //     onPrimary: Colors.white,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(5),
                      //     ),
                      //   ),
                      //   child: const Text("Reschedule"),
                      // )
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            color: const Color(0xFFE6F1F8),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Date", style: TextStyle(fontSize: 12)),
                          Text("Dec 20, 2022", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Time", style: TextStyle(fontSize: 12)),
                          Text("10 : 00 am", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Dietitian / Nutritionist",
                              style: TextStyle(fontSize: 12)),
                          Text("Dr. John Doe", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Service Name"),
                          Text("Service Program 2",
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(width: 10),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) =>
                      //               const RescheduleAppointment()),
                      //     );
                      //   },
                      //   style: ElevatedButton.styleFrom(
                      //     elevation: 0,
                      //     primary: const Color(0xFF0047BA),
                      //     onPrimary: Colors.white,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(5),
                      //     ),
                      //   ),
                      //   child: const Text("Reschedule"),
                      // )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
