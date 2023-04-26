import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:
            const Text('Conversations', style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            //Search bar
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            //List of conversations
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                child: const Placeholder(
                  color: Colors.grey,
                ),
              ),
              title: const Text('John Doe'),
              subtitle: const Text('Hello, how are you?'),
              trailing: const Text('10:00'),
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                child: const Placeholder(
                  color: Colors.grey,
                ),
              ),
              title: const Text('John Doe'),
              subtitle: const Text('Hello, how are you?'),
              trailing: const Text('10:00'),
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                child: const Placeholder(
                  color: Colors.grey,
                ),
              ),
              title: const Text('John Doe'),
              subtitle: const Text('Hello, how are you?'),
              trailing: const Text('10:00'),
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                child: const Placeholder(
                  color: Colors.grey,
                ),
              ),
              title: const Text('John Doe'),
              subtitle: const Text('Hello, how are you?'),
              trailing: const Text('10:00'),
            ),
          ],
        ),
      ),
    );
  }
}
