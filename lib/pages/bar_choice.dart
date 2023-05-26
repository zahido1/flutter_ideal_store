import 'package:flutter/material.dart';
import 'package:flutter_ideal_store/widgets/tab_bar.dart';

class ChoicePage extends StatefulWidget {
  const ChoicePage({super.key});

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarWidget(),
    );
  }
}
