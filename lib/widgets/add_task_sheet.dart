import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoing/models/taskdata.dart';

class AddTaskBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0xFF7E9BE7),
        //git test
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        children: [
          const Text(
            'Add task',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            cursorColor: Colors.pink,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            )),
            onChanged: (value) {
              newTaskTitle = value;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          MaterialButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle);
              Navigator.pop(context);
            },
            color: const Color(0xFF081958),
            minWidth: width * 0.4,
            height: height * 0.06,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const Text('Add'),
          )
        ],
      ),
    );
  }
}
