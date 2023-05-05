import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyAccounts extends StatefulWidget {
  const MyAccounts({super.key});

  @override
  State<MyAccounts> createState() => _MyAccountsState();
}

class _MyAccountsState extends State<MyAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFE6F1F8),
          elevation: 0,
          title:
              const Text('My Account', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          leading: IconButton(
            splashRadius: 25,
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
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://wallpapers.com/images/featured/87h46gcobjl5e4xu.jpg")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Samantha Ong",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("youremail@domain.com | +601 234 567 89"),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    color: const Color(0xFFE6F1F8),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Full Name"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    color: const Color(0xFFE6F1F8),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Date of Birth"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    color: const Color(0xFFE6F1F8),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email Address"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    color: const Color(0xFFE6F1F8),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Phone number"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shadowColor: Colors.grey,
                          color: const Color(0xFFE6F1F8),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            child: const TextField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.arrow_drop_down),
                                  border: InputBorder.none,
                                  hintText: "Country"),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Card(
                          shadowColor: Colors.grey,
                          color: const Color(0xFFE6F1F8),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            child: const TextField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.arrow_drop_down),
                                  border: InputBorder.none,
                                  hintText: "Gender"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shadowColor: Colors.grey,
                          color: const Color(0xFFE6F1F8),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            child: const TextField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.arrow_drop_down),
                                  border: InputBorder.none,
                                  hintText: "Height"),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Card(
                          shadowColor: Colors.grey,
                          color: const Color(0xFFE6F1F8),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            child: const TextField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.arrow_drop_down),
                                  border: InputBorder.none,
                                  hintText: "Weight"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    color: const Color(0xFFE6F1F8),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Address"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0047BA),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text("Update"),
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
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
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
