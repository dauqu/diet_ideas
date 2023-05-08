import 'package:diet_ideas/pages/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FindDietIdeas extends StatefulWidget {
  const FindDietIdeas({super.key});

  @override
  State<FindDietIdeas> createState() => _FindDietIdeasState();
}

class _FindDietIdeasState extends State<FindDietIdeas> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Column(
            children: const [
              Text('Hello, Masfara!', style: TextStyle(color: Colors.black)),
              Text('Today Wed, Dec 28',
                  style: TextStyle(fontSize: 12, color: Color(0xFF0047BA))),
            ],
          ),
          centerTitle: true,
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
          bottom: TabBar(
            dividerColor: Colors.black,
            indicatorPadding: const EdgeInsets.all(10),
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFF0F46B3),
            ),
            unselectedLabelColor: Colors.black,
            tabs: const [
              Tab(
                text: 'Blogs',
              ),
              Tab(
                text: 'Resources',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Blogs(),
            Resources(),
          ],
        ),
      ),
    );
  }
}

class Blogs extends StatefulWidget {
  const Blogs({super.key});

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/Group 10.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.9),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            const Text("All Blogs",
                style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/Group 10.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              width: 200,
                              child: const Text(
                                'Diet Ideas on a Holiday in awestern country',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Admin',
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.lock_clock,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '5 min',
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Resources extends StatefulWidget {
  const Resources({super.key});

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
              color: const Color(0xFFE6F1F8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Resource 3",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("15-Feb-2023    10:27AM")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Rich Text
                    SizedBox(
                      //Full width
                      width: MediaQuery.of(context).size.width,
                      child: const Text.rich(
                        TextSpan(
                          text: 'Resource link :',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'www.googledrive.com',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue,
                                )),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
