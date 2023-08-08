import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/models/result_arguments.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late TextEditingController _firstNumberController;
  late TextEditingController _secondNumberController;

  @override
  void initState() {
    super.initState();
    _firstNumberController = TextEditingController();
    _secondNumberController = TextEditingController();
  }

  @override
  void dispose() {
    _firstNumberController.dispose();
    _secondNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const sizedBox16 = SizedBox(height: 16);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _firstNumberController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter first number',
                  ),
                ),
                sizedBox16,
                TextField(
                  controller: _secondNumberController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration:
                      const InputDecoration(labelText: 'Enter second number'),
                ),
                sizedBox16,
                ElevatedButton(
                  onPressed: () {
                    int firstNumber =
                        int.tryParse(_firstNumberController.text) ?? 0;
                    int secondNumber =
                        int.tryParse(_secondNumberController.text) ?? 0;
                    int sum = 0;
                    int minNumber = firstNumber <= secondNumber
                        ? firstNumber
                        : secondNumber;
                    int maxNumber = firstNumber <= secondNumber
                        ? secondNumber
                        : firstNumber;

                    for (int i = minNumber; i <= maxNumber; i++) {
                      sum += i;
                    }

                    Navigator.pushNamed(
                      context,
                      '/result',
                      arguments: ResultArguments(
                        sum: sum,
                        minNumber: minNumber,
                        maxNumber: maxNumber,
                      ),
                    );
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
