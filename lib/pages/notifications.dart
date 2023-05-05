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
          title: Column(
            children: const [
              Text('Hello, Masfara!', style: TextStyle(color: Colors.black)),
              Text('Today Wed, Dec 28',
                  style: TextStyle(fontSize: 12, color: Color(0xFF0047BA))),
            ],
          ),
          centerTitle: true,
          actions: [
            IconButton(
              splashRadius: 25,
              icon: const Icon(
                Icons.notifications_outlined,
                color: Color(0xFF0047BA),
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsPage()),
                );
              },
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                  title: RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      text: 'New Update',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: ' 2 days ago',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  subtitle: const Text(
                      'Your app has been successfully updated to version 1.2.2'),
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
                  title: RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      text: 'You have a new Message',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: ' 2 days ago',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Text('You have a new message from admin'),
                  trailing: Text("2.30h ago"),
                  // onTap: () {
                  //   Navigator.pushNamed(context, '/account');
                  // },
                ),
                //Divider
                const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                ListTile(
                  title: RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      text: 'Expired Service Program',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: ' 2 days ago',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
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
