import 'package:flutter/material.dart';
import 'package:todoing/widgets/todobox.dart';
import 'package:provider/provider.dart';
import '../widgets/add_task_sheet.dart';
import '../widgets/tasklist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskBox(),
          );
        },
        backgroundColor: const Color(0xFFEB06FF),
        elevation: 10,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu_rounded,
          color: Color(0xFF7E9BE7),
          size: 32,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Color(0xFF7E9BE7), size: 32),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
                Icon(Icons.notifications, color: Color(0xFF7E9BE7), size: 28),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF344FA1),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 50.0, left: 30, right: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What\'s up, Nouf!',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'TODAYS TASKS',
              style: TextStyle(
                color: Color(0xFF7E9BE7),
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: TasksList(),
            )
          ],
        ),
      ),
    );
  }
}
