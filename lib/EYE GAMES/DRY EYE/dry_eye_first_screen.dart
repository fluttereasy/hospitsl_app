import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dry_eye_question_one.dart';

class DryEyeFirstScreen extends StatefulWidget {
  const DryEyeFirstScreen({Key? key}) : super(key: key);

  @override
  State<DryEyeFirstScreen> createState() => _DryEyeFirstScreenState();
}

class _DryEyeFirstScreenState extends State<DryEyeFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Background color
            ),
            onPressed: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => QuestioneOne()));
            },
            child: const Text('START')),
      ),
      appBar: AppBar(
        title: const Text('DRY EYE'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('images/swipe_image.PNG')),
          const SizedBox(height: 50),
          const Text('Swipe for next question'),
        ],
      ),
    );
  }
}
