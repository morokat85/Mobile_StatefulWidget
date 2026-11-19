import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(child: SelectableButton()),
    ),
  ),
);

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

@override
  State<SelectableButton> createState() {
    return _SelectableButtonState();
  }
}

class _SelectableButtonState extends State<SelectableButton> {
  bool isSelected = false;

  String get buttonText {
    if (isSelected) {
      return 'Selected';
    } else {
      return 'Not Selected ';
    }
  }

  Color get textColor {
    if (isSelected) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  Color get backGround {
    if (isSelected) {
      return Colors.blue.shade500;
    } else {
      return Colors.blue.shade50;
    }
  }

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: () => {
          setState (() {
            isSelected = !isSelected;
          })
        },
        child: Text(
          isSelected ? 'Selected' : 'isSelected'
        ),
      ),
    );
  }
}
