import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewFeedBack extends StatefulWidget {
  const NewFeedBack({super.key});

  @override
  State<NewFeedBack> createState() => _NewFeedBackState();
}

class _NewFeedBackState extends State<NewFeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            splashRadius: 20,
            onPressed: () {
              Navigator.pop(context);
            },
            tooltip: 'Menu Icon',
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          title: const Text('FeedBack', style: TextStyle(color: Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Rate your experience",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("How was your experience with us?",
                      style: TextStyle(fontSize: 18)),
                  const SizedBox(
                    height: 40,
                  ),
                  RatingBar.builder(
                    wrapAlignment: WrapAlignment.start,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color(0xFFF06E7F),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text("Tell us what can be improved?",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                  ),
                  //Group of chips
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: const [
                      Chip(
                        label: Text('Lorem ipsum dolor sit amet'),
                        backgroundColor: Color(0xFF6CCFAE),
                        labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      Chip(
                        label: Text('consectetur'),
                        backgroundColor: Color(0xFF6CCFAE),
                        labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      Chip(
                        label: Text('adipiscing'),
                        backgroundColor: Color(0xFF6CCFAE),
                        labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      Chip(
                        label: Text('Food'),
                        backgroundColor: Color(0xFF6CCFAE),
                        labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      Chip(
                        label: Text('New Food'),
                        backgroundColor: Color(0xFF6CCFAE),
                        labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      Chip(
                        label: Text('Environment'),
                        backgroundColor: Color(0xFF6CCFAE),
                        labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      Chip(
                        label: Text('Lorem'),
                        backgroundColor: Color(0xFF6CCFAE),
                        labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      Chip(
                        label: Text('Food'),
                        backgroundColor: Color(0xFF6CCFAE),
                        labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      Chip(
                        label: Text('Adipiscing elit, sed do eiusmod tempor'),
                        backgroundColor: Color(0xFF6CCFAE),
                        labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      Chip(
                        label: Text('Food'),
                        backgroundColor: Color(0xFF6CCFAE),
                        labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      Chip(
                        label: Text('Food'),
                        backgroundColor: Color(0xFF6CCFAE),
                        labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text("Rate Your Expert?",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                  ),
                  RatingBar.builder(
                    wrapAlignment: WrapAlignment.start,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color(0xFFDDCE00),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  //TextField
                  Card(
                    elevation: 2,
                    color: Colors.grey[200],
                    child: const TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: "Write your feedback here",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //Submit Button
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            //Show dilog box
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text("Thank You"),
                                    content: const Text(
                                        "Your feedback has been submitted"),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text("OK"))
                                    ],
                                  );
                                });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF6CCFAE),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          child: const Text("Submit"),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFFF0000),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          child: const Text("Cancel"),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ));
  }
}
