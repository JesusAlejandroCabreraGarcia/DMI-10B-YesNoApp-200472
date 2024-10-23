import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://sereneicons.tumblr.com/post/637308383086657536/emma-roberts-like-or-reblog-if-you-save'),
          ),
          ),
          title: Text('Mi amor❤️'),
          centerTitle: false,
      ),
    );
  }
}
