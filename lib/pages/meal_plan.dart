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
    return const Placeholder();
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
            children: const [
              TextField(
                
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
