import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ServiceProgramme extends StatefulWidget {
  const ServiceProgramme({super.key});

  @override
  State<ServiceProgramme> createState() => _ServiceProgrammeState();
}

class _ServiceProgrammeState extends State<ServiceProgramme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Programme',
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          splashRadius: 20,
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Card(
                color: const Color(0xFF0047BA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    //Full width
                    width: double.infinity,
                    child: Column(
                      children: [
                        const Text("Dec 20, 2022",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 15,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Cut-off date: ',
                            style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'Dec 20, 2022',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Select the type of Service Programme of your choice",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 15,
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color(0xFFF06E7F),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    //Full width
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Service Programme 1",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.start),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                            textAlign: TextAlign.start),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          //Full width
                          width: double.infinity,
                          child: Text("RM 200",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.end),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color(0xFFE6F1F8),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    //Full width
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Service Programme 1",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            textAlign: TextAlign.start),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                            textAlign: TextAlign.start),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          //Full width
                          width: double.infinity,
                          child: Text("RM 1000",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.end),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xFFE6F1F8),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    //Full width
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Service Programme 1",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            textAlign: TextAlign.start),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                            textAlign: TextAlign.start),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          //Full width
                          width: double.infinity,
                          child: Text("RM 1400",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.end),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const ServiceProgramme()),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    primary: const Color(0xFF6CCFAE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                  ),
                  child: const Text('Continue with Payment',
                      style: TextStyle(fontSize: 18)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
