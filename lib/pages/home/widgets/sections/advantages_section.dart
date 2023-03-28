import 'package:flutter/material.dart';
import 'package:responsive_app/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantages(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      );
    }

    Widget buildVerticalAdvantages(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          )
        ],
      );
    }

    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= mobileBreakpoint) {
          return Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 8,
              children: [
                buildHorizontalAdvantages(
                    '+45.000 alunos', 'Didática garantida'),
                buildHorizontalAdvantages(
                    '+45.000 alunos', 'Didática garantida'),
                buildHorizontalAdvantages(
                    '+45.000 alunos', 'Didática garantida')
              ],
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: buildVerticalAdvantages(
                    '+45.000 alunos', 'Didática garantida'),
              ),
              Expanded(
                child: buildVerticalAdvantages(
                    '+45.000 alunos', 'Didática garantida'),
              ),
              Expanded(
                child: buildVerticalAdvantages(
                    '+45.000 alunos', 'Didática garantida'),
              ),
            ],
          ),
        );
      },
    );
  }
}
