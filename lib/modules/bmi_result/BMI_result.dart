import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final int result;
  final bool ismale;
  final double Age;
  BMIResult({
    @required this.Age,
    this.ismale,
    this.result,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Result',style: TextStyle(
              fontWeight: FontWeight.bold
          ),),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender: ${ismale ? 'Male': 'Female'} ' , style: TextStyle(
                fontWeight: FontWeight.bold , fontSize: 30.0
            ),),
            Text('Age: ${Age}',style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30.0
            ),),
            Text('Result: ${result} ', style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30.0
            ),),

          ],
        ),
      ),
    );
  }
}
