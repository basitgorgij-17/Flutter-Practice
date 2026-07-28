import 'package:flutter/material.dart';

class Counterapp extends StatefulWidget {
  final int add;
  final int minus;

  const Counterapp({super.key,required this.add,required this.minus});

  @override
  State<Counterapp> createState() => _CounterappState();
}

class _CounterappState extends State<Counterapp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}