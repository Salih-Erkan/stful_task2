import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<int> _counterValues = List.filled(5, 0); // 5 CounterCards

  void _updateCounter(int index, int newValue) {
    setState(() {
      _counterValues[index] = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    final int total = _counterValues.reduce((a, b) => a + b);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < _counterValues.length; i++) ...[
              CounterCard(
                onChanged: (val) {
                  _updateCounter(i, val);
                },
              ),
              const SizedBox(height: 8),
            ],
            const SizedBox(height: 16),
            Text(
              'Gesamtsumme: $total',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
