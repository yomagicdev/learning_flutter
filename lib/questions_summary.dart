import 'package:flutter/material.dart';
import 'package:learning_flutter/number_circle.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map((data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NumberCircle(
                      number: ((data['question_index'] as int) + 1).toString()),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text((data['question']) as String,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                        const SizedBox(height: 10),
                        Text(data['user_answer'] as String,
                            style: const TextStyle(
                              color: Colors.white24,
                              fontSize: 16,
                            )),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  )
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
