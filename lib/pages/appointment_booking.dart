import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AppointmentBooking extends StatefulWidget {
  const AppointmentBooking({super.key});

  @override
  State<AppointmentBooking> createState() => _AppointmentBookingState();
}

class _AppointmentBookingState extends State<AppointmentBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE6F1F8),
        elevation: 0,
        title: const Text("Appointment Booking",
            style: TextStyle(color: Colors.black)),
        leading: IconButton(
          splashRadius: 20,
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SfDateRangePicker(
                      view: DateRangePickerView.month,
                      selectionMode: DateRangePickerSelectionMode.range,
                      onSelectionChanged:
                          (DateRangePickerSelectionChangedArgs args) {},
                    )),
                const SizedBox(height: 10),
                //Horizentel Scroll
                const Text(
                  "Time",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 1.0, color: Color(0xFF000000)),
                            padding: const EdgeInsets.all(15),
                            foregroundColor: Colors.black,
                            backgroundColor: const Color(0xFFE6F1F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("10:00 AM"),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 1.0, color: Color(0xFF000000)),
                            padding: const EdgeInsets.all(15),
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFF0F46B3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("10:00 AM"),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 1.0, color: Color(0xFF000000)),
                            padding: const EdgeInsets.all(15),
                            foregroundColor: Colors.black,
                            backgroundColor: const Color(0xFFE6F1F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("10:00 AM"),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 1.0, color: Color(0xFF000000)),
                            padding: const EdgeInsets.all(15),
                            foregroundColor: Colors.black,
                            backgroundColor: const Color(0xFFE6F1F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("10:00 AM"),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 1.0, color: Color(0xFF000000)),
                            padding: const EdgeInsets.all(15),
                            foregroundColor: Colors.black,
                            backgroundColor: const Color(0xFFE6F1F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("10:00 AM"),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 1.0, color: Color(0xFF000000)),
                            padding: const EdgeInsets.all(15),
                            foregroundColor: Colors.black,
                            backgroundColor: const Color(0xFFE6F1F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("10:00 AM"),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 1.0, color: Color(0xFF000000)),
                            padding: const EdgeInsets.all(15),
                            foregroundColor: Colors.black,
                            backgroundColor: const Color(0xFFE6F1F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("10:00 AM"),
                        ),
                      ],
                    )),
                const SizedBox(height: 30),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color(0xFFE6F1F8),
                  child: Container(
                      //Full width
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          const Text("Service Name",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10),
                          const Text("Service Programme 1",
                              style: TextStyle(fontSize: 20)),
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: const [
                                      Icon(Icons.calendar_today),
                                      SizedBox(width: 10),
                                      Text("Date",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Text("12/12/2021",
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              //Divider
                              const SizedBox(
                                height: 50,
                                child: VerticalDivider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: const [
                                      Icon(Icons.access_time),
                                      SizedBox(width: 10),
                                      Text("Time",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Text("10:00 AM",
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 50),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SimpleDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(10),
                                          height: 300,
                                          width: double.infinity,
                                          child: Column(
                                            children: [
                                              const Text("Service Name",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              const SizedBox(height: 10),
                                              const Text("Service Programme 1",
                                                  style:
                                                      TextStyle(fontSize: 20)),
                                              const SizedBox(height: 50),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Icon(Icons
                                                              .calendar_today),
                                                          SizedBox(width: 10),
                                                          Text("Date",
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      const Text("12/12/2021",
                                                          style: TextStyle(
                                                              fontSize: 20)),
                                                    ],
                                                  ),
                                                  //Divider
                                                  const SizedBox(
                                                    height: 50,
                                                    child: VerticalDivider(
                                                      color: Colors.black,
                                                      thickness: 1,
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Icon(Icons
                                                              .access_time),
                                                          SizedBox(width: 10),
                                                          Text("Time",
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      const Text("10:00 AM",
                                                          style: TextStyle(
                                                              fontSize: 20)),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 50,
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            const Color(
                                                                0xFF0047BA),
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 20,
                                                                vertical: 15),
                                                        textStyle:
                                                            const TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                      ),
                                                      child:
                                                          const Text("Confirm"),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Expanded(
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: const Color(
                                                            0xFFFF0000),
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 20,
                                                                vertical: 15),
                                                        textStyle:
                                                            const TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                      ),
                                                      child:
                                                          const Text("Cancel"),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                      // actions: <Widget>[
                                      //   TextButton(
                                      //     style: TextButton.styleFrom(
                                      //       textStyle: Theme.of(context)
                                      //           .textTheme
                                      //           .labelLarge,
                                      //     ),
                                      //     child: const Text('Disable'),
                                      //     onPressed: () {
                                      //       Navigator.of(context).pop();
                                      //     },
                                      //   ),
                                      //   TextButton(
                                      //     style: TextButton.styleFrom(
                                      //       textStyle: Theme.of(context)
                                      //           .textTheme
                                      //           .labelLarge,
                                      //     ),
                                      //     child: const Text('Enable'),
                                      //     onPressed: () {
                                      //       Navigator.of(context).pop();
                                      //     },
                                      //   ),
                                      // ],
                                    );
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                primary: const Color(0xFF6CCFAE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding:
                                    const EdgeInsets.fromLTRB(50, 15, 50, 15),
                              ),
                              child: const Text('BOOK APPOINTMENT',
                                  style: TextStyle(fontSize: 18)),
                            ),
                          )
                        ],
                      )),
                )
              ],
            )),
      ),
    );
  }
}
