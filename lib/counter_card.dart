import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  final ValueChanged<int> onChanged;

  const CounterCard({super.key, required this.onChanged});

  @override
  State<CounterCard> createState() => _MyCounterCardState();
}

class _MyCounterCardState extends State<CounterCard> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
      widget.onChanged(counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: $counter'),
            ElevatedButton(
              onPressed: _increment,
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
