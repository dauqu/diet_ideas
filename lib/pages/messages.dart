import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  //JSON data
  var data = [
    {
      "name": "John Doe",
      "message": "Hello, Rishu how are you?",
      "time": "15:30",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": false,
    },
    {
      "name": "John Doe",
      "message": "Hi, I am fine. What about you? How is your family?",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": true,
    },
    {
      "name": "John Doe",
      "message": "Are you working right now?",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": false,
    },
    {
      "name": "John Doe",
      "message": "??",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": false,
    },
    {
      "name": "John Doe",
      "message": "Yes I am working. I am working on a new project.",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": true,
    },
    {
      "name": "John Doe",
      "message": "Please don't disturb me right now.",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": true,
    },
    {
      "name": "John Doe",
      "message": "OKay, I will call you later.",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": false,
    },
    {
      "name": "John Doe",
      "message": "Bye",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": false,
    },
    {
      "name": "John Doe",
      "message": "👋",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": false,
    },
    {
      "name": "John Doe",
      "message": "👋",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": true,
    },
    {
      "name": "John Doe",
      "message":
          "Hi, are you there? I am waiting for your reply. Please reply me. it's urgent. you have to reply me.",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": false,
    },
    {
      "name": "John Doe",
      "message":
          "Okay I am replying you. I am sorry for the late reply. I was busy in my work.",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": true,
    },
    {
      "name": "John Doe",
      "message": "😀",
      "time": "15:31",
      "avatar_url":
          "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
      "isMessageRead": false,
      "isSentByMe": true,
    },
  ];

  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 20,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text('Jane Doe', style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        //Chat UI
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                //List order
                reverse: true,

                itemCount: data.length,
                itemBuilder: (context, index) => Align(
                  alignment: data[index]["isSentByMe"] == true
                      ? Alignment.topRight
                      : Alignment.topLeft,
                  child: Container(
                    //Max width for the message
                    constraints: const BoxConstraints(maxWidth: 250),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: data[index]["isSentByMe"] == true
                          ? const Color.fromARGB(255, 255, 255, 255)
                          : Color(0xFF0047BA),
                      //Left side border radius
                      borderRadius: data[index]["isSentByMe"] == true
                          ? const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            )
                          : const BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   "${data[index]["name"]}",
                        //   style: const TextStyle(
                        //     color: Colors.black,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        const SizedBox(height: 5),
                        Text(
                          "${data[index]["message"]}",
                          style: TextStyle(
                            color: data[index]["isSentByMe"] == true
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "${data[index]["time"]}",
                          style: TextStyle(
                              color: data[index]["isSentByMe"] == true
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //Input field
            Container(
              padding: const EdgeInsets.only(
                left: 5,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.add,
                    color: Color(0xFF18544E),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        hintText: "Type a message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const SizedBox(width: 15),
                  IconButton(
                    splashRadius: 20,
                    icon: const Icon(
                      Icons.send,
                      color: Color(0xFF18544E),
                    ),
                    //Sent button
                    onPressed: () {
                      //Add message to the list and update the UI
                      if (messageController.text.isNotEmpty) {
                        setState(() {
                          data.insert(
                            0,
                            {
                              "name": "John Doe",
                              "message": messageController.text,
                              "time": "15:31",
                              "avatar_url":
                                  "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png",
                              "isMessageRead": false,
                              "isSentByMe": true,
                            },
                          );
                        });
                        messageController.clear();
                      }
                    },
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
