import 'package:flutter/material.dart';
import 'package:responsive_app/breakpoints.dart';
import 'package:responsive_app/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return const CourseItem();
          },
        );
      },
    );
  }
}
