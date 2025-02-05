import 'package:flutter/material.dart';

class AddTodoWidget extends StatelessWidget {
  const AddTodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize
              .min, // Ensures the column doesn't expand unnecessarily
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'create a new todo',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: 'title',
                      hintText: 'enter todo title',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon: const Icon(Icons.title),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Add save functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 48),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('save todo'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
