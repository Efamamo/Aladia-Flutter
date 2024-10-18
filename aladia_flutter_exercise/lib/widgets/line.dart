import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Line Default',
  type: Line,
)
Center defaultLine(BuildContext context) {
  return Center(
    child: Line(
      start: context.knobs.color(label: "Start"),
      end: context.knobs.color(label: "End"),
    ),
  );
}

class Line extends StatelessWidget {
  final Color start;
  final Color end;
  const Line({super.key, required this.start, required this.end});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [start, end],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
