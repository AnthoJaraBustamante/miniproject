import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/models/result_arguments.dart';
import '../global_widgets/constrained_card.dart';
import '../utils/device_info.dart';

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
        child: ConstrainedCard(
          child: SingleChildScrollView(
            child: DeviceInfoText(),
          ),
        ),
      ),
    );
  }
}
