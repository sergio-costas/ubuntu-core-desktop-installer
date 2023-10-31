import 'package:flutter/material.dart';

import 'l10n.dart';

const headerStyle = TextStyle(color: Colors.white, fontSize: 32);
const bodyStyle = TextStyle(color: Colors.white, fontSize: 18);

final installationSlides = [
  _buildFirstSlide,
];

Widget _buildFirstSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/welcome.png'),
      Padding(
        padding: const EdgeInsets.all(40),
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(context.l10n.firstSlideHeader, style: headerStyle),
              const SizedBox(height: 20),
              Expanded(
                child: Text(context.l10n.firstSlideBody, style: bodyStyle),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
