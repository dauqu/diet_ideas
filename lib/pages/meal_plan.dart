import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MealPlan extends StatefulWidget {
  const MealPlan({super.key});

  @override
  State<MealPlan> createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            splashRadius: 20,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Breakfast Meal Plan',
              style: TextStyle(color: Colors.black)),
          centerTitle: true,
          bottom: TabBar(
            splashBorderRadius: BorderRadius.circular(50),
            dividerColor: Colors.black,
            indicatorPadding: const EdgeInsets.all(5),
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF0F46B3),
            ),
            overlayColor: MaterialStateProperty.all(Colors.white),
            unselectedLabelColor: Colors.black,
            tabs: const [
              Tab(
                text: 'Meal Plans',
              ),
              Tab(
                text: 'Meal Log',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MealLog(),
            MealPlans(),
          ],
        ),
      ),
    );
  }
}

class MealPlans extends StatefulWidget {
  const MealPlans({super.key});

  @override
  State<MealPlans> createState() => _MealPlansState();
}

class _MealPlansState extends State<MealPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/circle.png"),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "No new meals have been added\n, Search for and add your meal \nnow!",
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )),
    );
  }
}

class MealLog extends StatefulWidget {
  const MealLog({super.key});

  @override
  State<MealLog> createState() => _MealLogState();
}

class _MealLogState extends State<MealLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/circle.png"),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                  tileColor: const Color(0xFFE6F1F8),
                  title: const Text('Coffee with Milk'),
                  subtitle: Row(
                    children: const [
                      //White dot
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('219 kcal'),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                  tileColor: Color(0xFFE6F1F8),
                  title: const Text('Sandwich'),
                  subtitle: Row(
                    children: const [
                      //White dot
                      CircleAvatar(
                        radius: 5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('300 kcal'),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                  tileColor: Color(0xFFE6F1F8),
                  title: Text('Tomato'),
                  subtitle: Row(
                    children: const [
                      //White dot
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('219 kcal'),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                  tileColor: Color(0xFFE6F1F8),
                  title: Text('Cucumber'),
                  subtitle: Row(
                    children: const [
                      //White dot
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('219 kcal'),
                    ],
                  )),
            ],
          )),
    );
  }
}
