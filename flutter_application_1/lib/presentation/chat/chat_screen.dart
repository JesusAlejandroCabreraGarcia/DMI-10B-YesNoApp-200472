import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/Chat/my_message_bubble.dart';
import 'package:flutter_application_1/presentation/widgets/Chat/other_message_bubble.dart';
import 'package:flutter_application_1/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://sereneicons.tumblr.com/post/637308383086657536/emma-roberts-like-or-reblog-if-you-save'),
          ),
        ),
        title: Text('Mi amor 💞'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // Aquí usamos Expanded correctamente para envolver el ListView.builder
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const OtherMessageBubble()
                      : const MyMessageBubble();
                },
              ),
            ),
            // Este widget estará siempre al final de la pantalla
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
