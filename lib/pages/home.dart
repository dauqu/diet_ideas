import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              icon: const Icon(
                Icons.notifications_outlined,
                color: Color(0xFF0047BA),
                size: 30,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 0, 142, 224),
              height: 200,
              child: PageView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    //Background image
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://assets.lybrate.com/q_auto:eco,f_auto,w_850/imgs/product/kwds/diet-chart/Diet-Chart-For-Kids-v1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    //Background image
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://assets.lybrate.com/q_auto:eco,f_auto,w_850/imgs/product/kwds/diet-chart/Diet-Chart-For-Kids-v1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    //Background image
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://assets.lybrate.com/q_auto:eco,f_auto,w_850/imgs/product/kwds/diet-chart/Diet-Chart-For-Kids-v1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //GridView
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
                          'assets/images/diet 1.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'My Diet Program',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(0),
                    color: Color(0xFF6CCFAE),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/testimonials 1.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Discover Diet Ideas',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(0),
                    color: Color(0xFFF06E7F),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/feedback (1) 1.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Feedback',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(0),
                    color: Color(0xFFFECA1F),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/medical-file 1.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'My Diet Program',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(0),
                    color: Color(0xFF0F46B3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Layer 2.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Learn More',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(0),
                    color: Color(0xFFE2E2E2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/portion 1.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Nutrition Tourism',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(0),
                    color: Color(0xFFE2E2E2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/shopping-bag 1.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'My Diet Program',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(0),
                    color: Color(0xFFE2E2E2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/diet (1) 1.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'My Diet Program',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
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
        )));
  }
}
