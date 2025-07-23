import 'package:flutter/material.dart';
import 'package:socode_flutter/colors.dart';

class MySimpleApp extends StatelessWidget {
  const MySimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.third, // use custom color for background
      appBar: AppBar(
        title: Text('SoCode School'),
        backgroundColor: AppColors.second, // custom AppBar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.first, // custom text color
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Name:',
                  style: TextStyle(fontSize: 18, color: AppColors.first),
                ),
                SizedBox(width: 10),
                Text(
                  'Alice',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Name:',
                  style: TextStyle(fontSize: 18, color: AppColors.first),
                ),
                SizedBox(width: 10),
                Text(
                  'Bob',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
