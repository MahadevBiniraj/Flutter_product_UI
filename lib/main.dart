import 'package:flutter/material.dart';
import 'package:fluttergroupui/view/check_out/check_out.dart';

void main() {
  runApp(Mainscreen());
}

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Checkout());
  }
}
