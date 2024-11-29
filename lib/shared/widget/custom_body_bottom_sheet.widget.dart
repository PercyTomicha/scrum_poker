import 'package:flutter/material.dart';
import 'custom_button.widget.dart';

class CustomBodyBottomSheet extends StatefulWidget {
  final String title;
  final String label;
  final GlobalKey formKey;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Function()? onPressed;
  final String buttonText;
  const CustomBodyBottomSheet(
      {super.key,
      required this.title,
      required this.label,
      required this.formKey,
      required this.controller,
      required this.validator,
      required this.onPressed,
      required this.buttonText});

  @override
  State<CustomBodyBottomSheet> createState() => _CustomBodyBottomSheetState();
}

class _CustomBodyBottomSheetState extends State<CustomBodyBottomSheet> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 300+MediaQuery.of(context).viewInsets.bottom,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              widget.label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
            const SizedBox(height: 16),
            Form(
              key: widget.formKey,
              child: TextFormField(
                controller: widget.controller,
                validator: widget.validator,
              ),
            ),
            const SizedBox(height: 48),
            CustomButton(
              onPressed: widget.onPressed,
              text: widget.buttonText,
            ),
            SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
          ],
        ),
      ),
    );
  }
}