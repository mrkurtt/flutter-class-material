import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String yearSection = '';

  void updateYearSection() {
    setState(() {
      yearSection = '3-3A';
    });
    print(yearSection);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          yearSection,
          style: TextStyle(
              fontSize: 30.0, color: Colors.blue, fontWeight: FontWeight.w500),
        ),
        ElevatedButton(
            onPressed: updateYearSection, child: Text('Update Year Section')),
      ],
    );
  }
}
