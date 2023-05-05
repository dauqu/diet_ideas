import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DietitianBiodata extends StatefulWidget {
  const DietitianBiodata({super.key});

  @override
  State<DietitianBiodata> createState() => _DietitianBiodataState();
}

class _DietitianBiodataState extends State<DietitianBiodata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE6F1F8),
        elevation: 0,
        title: const Text('Dietitian Biodata',
            style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          splashRadius: 20,
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
