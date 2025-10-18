import 'package:flutter/material.dart';

class Day7Example extends StatefulWidget {
  const Day7Example({super.key});

  @override
  State<Day7Example> createState() => _Day7ExampleState();
}

class _Day7ExampleState extends State<Day7Example> {
  // Dropdown
  String dropdownValue = 'One';

  // Checkbox
  bool isChecked = false;

  // Switch
  bool isSwitched = false;

  // Slider
  double sliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Day 7 - Input Widgets')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DropdownButton
            const Text('DropdownButton:'),
            DropdownButton<String>(
              value: dropdownValue,
              items: <String>['One', 'Two', 'Three', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
            ),
            const SizedBox(height: 20),

            // Checkbox
            Row(
              children: [
                const Text('Checkbox:'),
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Switch
            Row(
              children: [
                const Text('Switch:'),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Slider
            const Text('Slider:'),
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 20,
              label: sliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
