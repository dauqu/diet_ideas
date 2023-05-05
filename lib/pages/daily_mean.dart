import 'package:diet_ideas/pages/meal_plan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DailyMeal extends StatefulWidget {
  const DailyMeal({super.key});

  @override
  State<DailyMeal> createState() => _DailyMealState();
}

class _DailyMealState extends State<DailyMeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            splashRadius: 20,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: const Text('Meals', style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(child: Image.asset("assets/images/circle.png")),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(child: Image.asset("assets/images/goal.png")),
                  const SizedBox(
                    height: 40,
                  ),
                  const Center(
                    child: Text(
                      "Macronutrients Breakdown",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Card(
                    color: const Color(0xFFE6F1F8),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: const [
                          ListTile(
                            leading: Icon(Icons.bloodtype),
                            title: Text("Proteins"),
                            trailing: Text("3g"),
                          ),
                          ListTile(
                            leading: Icon(Icons.hub),
                            title: Text("Fats"),
                            trailing: Text("0.3g"),
                          ),
                          ListTile(
                            leading: Icon(Icons.free_breakfast),
                            title: Text("Carbs"),
                            trailing: Text(
                              "3g",
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Daily Meals",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                      color: Color(0xFF0F46B3),
                      child: ListTile(
                        title: const Text(
                          "Breakfast",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        subtitle: const Text(
                          "Recomended 447 Kcal",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        trailing: IconButton(
                          splashRadius: 20,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MealPlan(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ))
                ]),
          ),
        ));
  }
}
