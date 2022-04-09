import 'package:flutter/material.dart';

class AddPlantPage extends StatelessWidget {
  const AddPlantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Planta'
        ),
      ),
      body: Center(
        child: Text('Planta'),
      ),
    );
  }
}
