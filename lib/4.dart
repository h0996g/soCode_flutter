import 'package:flutter/material.dart';
import 'package:socode_flutter/colors.dart';

class StackContainerDemo extends StatelessWidget {
  const StackContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.third,
      appBar: AppBar(
        backgroundColor: AppColors.second,
        title: Text('Stack & Container Demo'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: AppColors.first,
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: AppColors.second,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.third,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.first, width: 4),
              ),
              child: Center(
                child: Text(
                  'Top',
                  style: TextStyle(
                    color: AppColors.first,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
