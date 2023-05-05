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
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://wallpapers.com/images/featured/87h46gcobjl5e4xu.jpg")),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Samantha Ong", style: TextStyle(
                      
                ),)
              ],
            )));
  }
}
