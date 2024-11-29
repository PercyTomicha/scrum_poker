import 'package:flutter/material.dart';
import 'package:scrum_poker/shared/utils/session.temporal.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Listar Items : ${SessionTemporal.type.toString()}'),
      ),
    );
  }
}