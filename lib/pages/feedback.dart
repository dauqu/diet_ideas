import 'package:diet_ideas/pages/new_feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
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
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                //90% of height
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Card(
                        color: const Color(0xFFE6F1F8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, sed.",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  RatingBar.builder(
                                    wrapAlignment: WrapAlignment.start,
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Color(0xFFF06E7F),
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  const Text(
                                    "Issabelle Tan",
                                    style: TextStyle(fontSize: 18),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              CircleAvatar(
                                radius: 35,
                                child: ClipOval(
                                  child: Image.network(
                                    'https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg',
                                    fit: BoxFit.cover,
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewFeedBack()),
          );
        },
        label: const Text('New Feedback'),
        backgroundColor: const Color(0xFFF06E7F),
      ),
    );
  }
}
