import 'package:flutter/material.dart';
import 'package:scrum_poker/shared/widget/custom_button.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
          background: Colors.white,
        ),
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 250,
                width: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      'LOGO',
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                    Placeholder(),
                  ],
                ),
              ),
              const SizedBox(height: 60.0),
              CustomButton(
                text: 'Crear sala',
                onPressed: () {},
              ),
              const SizedBox(height: 16.0),
              CustomButton(
                text: 'Unirme a una sala',
                onPressed: () {},
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        )
      ),
    );
  }
}
