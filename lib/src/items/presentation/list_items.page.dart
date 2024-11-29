import 'package:flutter/material.dart';
import '../../../../shared/widget/custom_button.widget.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Spacer(),
            const SizedBox(height: 16),
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, '/create-item');
              },
              text: 'Agregar Item',
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}