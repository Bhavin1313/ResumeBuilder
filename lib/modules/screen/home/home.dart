import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/global.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.withOpacity(.8),
        onPressed: () {
          Get.toNamed("/detail");
        },
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(.8),
        title: Text(
          "Resume Builder",
          style: Global.poppins18,
        ),
      ),
    );
  }
}
