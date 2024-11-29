import 'package:flutter/material.dart';
import '../../../../shared/utils/session.temporal.dart';

class EstimatePage extends StatelessWidget {
  const EstimatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Estimación : ${SessionTemporal.type.toString()}'),
      ),
    );
  }
}