import 'package:flutter/material.dart';

class ToDoBox extends StatelessWidget {
  final bool isChanged;
  final void Function() delete;
  final String TaskTitle;
  final void Function(bool?) callback;
  const ToDoBox({
    Key? key,
    required this.isChanged,
    required this.TaskTitle,
    required this.callback,
    required this.delete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: delete,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: const Color(0xFF081958),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Checkbox(
              value: isChanged,
              //onChanged: checkState,
              onChanged: callback,
              shape: const CircleBorder(),
              activeColor: const Color(0xFFEB06FF),
            ),
            Text(
              TaskTitle,
              style: TextStyle(
                  decoration: isChanged ? TextDecoration.lineThrough : null),
            ),
          ],
        ),
      ),
    );
  }
}
