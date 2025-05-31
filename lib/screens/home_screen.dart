import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _buttonPressedCount = 0;

  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // clear memory resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home screen")),
      body: Center(
        child: Column(
          children: [
            Text("Button pressed count : $_buttonPressedCount"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _buttonPressedCount = _buttonPressedCount + 1;
                setState(() {});
                log(
                  "button pressed count $_buttonPressedCount",
                  name: 'home_screen',
                );
              },
              child: Text("Press me"),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: CheckboxListTile(
                value: _isChecked,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) {
                  if (value != null) {
                    _isChecked = value;
                    setState(() {});
                  }
                },
                title: Text("Show Fathers name field"),
              ),
            ),
            SizedBox(height: 20),
            if (_isChecked)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(label: Text("Father's Name")),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
