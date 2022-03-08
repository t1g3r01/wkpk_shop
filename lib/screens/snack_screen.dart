import 'package:flutter/material.dart';

class SnackScreen extends StatelessWidget {
  static const String rn = "/snackScreen";
  const SnackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Snack"),
      ),
    );
  }
}
