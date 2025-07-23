import 'package:flutter/material.dart';
import 'package:socode_flutter/colors.dart';

class ExpandedOnlyExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.third,
      appBar: AppBar(
        backgroundColor: AppColors.second,
        title: Text('Expanded Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(
              'Row with Expanded:',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.first,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 60,
                    color: AppColors.first,
                    child: Center(
                      child: Text(
                        'Expanded 1',
                        style: TextStyle(color: AppColors.third, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 60,
                    color: AppColors.second,
                    child: Center(
                      child: Text(
                        'Expanded 2 (flex:2)',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
