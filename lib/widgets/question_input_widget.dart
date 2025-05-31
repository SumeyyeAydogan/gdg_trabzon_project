import 'package:flutter/material.dart';

class QuestionInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAnalyze;
  final bool isLoading;
  const QuestionInputWidget({required this.controller, required this.onAnalyze, this.isLoading = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'Sorunuzu yazın',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: isLoading ? null : onAnalyze,
          child: isLoading ? const CircularProgressIndicator() : const Text('Analiz Et'),
        ),
      ],
    );
  }
}
