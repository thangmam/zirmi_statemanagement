import 'package:flutter/material.dart';

class HomeScreenTwo extends StatelessWidget {
  const HomeScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen Two")),
      body: Center(
        child: Column(
          children: [
            Text("Button pressed count : 0"),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Press me")),
          ],
        ),
      ),
    );
  }
}
