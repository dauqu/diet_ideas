import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          //Rounded image leading
          leading: IconButton(
            splashRadius: 25,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF0047BA),
              size: 25,
            ),
          ),
          backgroundColor: const Color(0xFFB8D8EB),
          title: const Text('Hello, Masfara!',
              style: TextStyle(color: Colors.black)),
          centerTitle: true,
          actions: const [
            IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Color(0xFF0047BA),
                size: 30,
              ),
              onPressed: null,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const [
                ListTile(
                  title: Text('New Update'),
                  subtitle: Text(
                      'Your app has been successfully updated to version 1.2.2'),
                  trailing: Text("2h ago"),
                  // onTap: () {
                  //   Navigator.pushNamed(context, '/account');
                  // },
                ),
                //Divider
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                ListTile(
                  title: Text('You have a new Message'),
                  subtitle: Text('You have a new message from admin'),
                  trailing: Text("2.30h ago"),
                  // onTap: () {
                  //   Navigator.pushNamed(context, '/account');
                  // },
                ),
                //Divider
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                ListTile(
                  title: Text('Expired Service Program'),
                  subtitle:
                      Text('Your service program has expired on 30/03/22'),
                  trailing: Text("3h ago"),
                  // onTap: () {
                  //   Navigator.pushNamed(context, '/account');
                  // },
                ),
              ],
            )));
  }
}
