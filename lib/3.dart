import 'package:flutter/material.dart';
import 'package:socode_flutter/colors.dart';

class SafeAreaScrollIconButtonDemo extends StatelessWidget {
  const SafeAreaScrollIconButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.third,
      appBar: AppBar(
        backgroundColor: AppColors.second,
        title: Text('icon & Scroll', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.info, color: AppColors.first),
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Info button pressed!')));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, SoCode!',
                style: TextStyle(
                  color: AppColors.first,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Scroll down to see more items.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 24),
              for (int i = 1; i <= 15; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: i % 2 == 0 ? AppColors.first : AppColors.second,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: AppColors.third),
                        SizedBox(width: 16),
                        Text(
                          'Scrollable Item $i',
                          style: TextStyle(
                            color: AppColors.third,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
