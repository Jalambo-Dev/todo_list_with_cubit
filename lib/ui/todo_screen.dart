import 'package:flutter/material.dart';
import 'add_todo_widget.dart'; // Ensure this import is correct

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('todo list'),
      ),
      body: const Center(
        child: Text('data'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddTodoBottomSheet(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddTodoBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows the sheet to take up more space
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context)
                .viewInsets
                .bottom, // Adjusts for keyboard
          ),
          child: const AddTodoWidget(),
        );
      },
    );
  }
}
