import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1DjObaQ4ALIp2BgjBt-_HwFMQ3TcnVZ-rXbqpVrwX81Rry3nFxfNEpHM9oPpAkBjO0rA&usqp=CAU',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 4),
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return const AutoSizeText(
                'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
                minFontSize: 3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        const Text(
          'Fernando Gnadt',
          style: TextStyle(color: Colors.grey),
        ),
        const Text(
          'R\$22,90',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
