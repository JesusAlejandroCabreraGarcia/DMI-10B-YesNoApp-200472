import 'package:flutter/material.dart';

class ChastScreen extends StatelessWidget {
  const ChastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://predis.ai/top-instagram-accounts/taylorswift.jpeg'),
          ),
        ),
        title: Text('Mi amor❤️'),
        centerTitle: false,
      ),
    );
  }
}