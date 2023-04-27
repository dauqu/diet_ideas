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
        centerTitle: false,
        leading: Text(""),
        leadingWidth: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            //Search bar
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            //List of conversations
            ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                        "https://shotkit.com/wp-content/uploads/bb-plugin/cache/cool-profile-pic-matheus-ferrero-landscape.jpeg",
                        fit: BoxFit.cover)),
              ),
              title: const Text('Dr Jane Doe'),
              subtitle:
                  const Text('That’s great, I look forward to hearing ba...'),
              trailing: Column(
                children: const [
                  Text('10:00'),
                  //1 message icon
                  Icon(
                    Icons.error_outline,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                        "https://shotkit.com/wp-content/uploads/bb-plugin/cache/cool-profile-pic-matheus-ferrero-landscape.jpeg",
                        fit: BoxFit.cover)),
              ),
              title: const Text('Diet Ideas Admin'),
              subtitle: const Text('@Ovo How is it going?'),
              trailing: Column(
                children: const [
                  Text('10:00'),
                  //Check Icon
                  Icon(
                    Icons.check,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
