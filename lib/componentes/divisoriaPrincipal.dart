import 'package:flutter/material.dart';

class ClippedPartsWidget extends StatelessWidget {
  final Widget top;
  final Widget bottom;

  ClippedPartsWidget({
    required this.top,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // I'm putting unmodified top widget to back. I wont cut it.
        // Instead I'll overlay it with clipped bottom widget.
        Align(
          child: top,
        ),
        Align(
          alignment: Alignment(1, 0.4),
          child: bottom,
        ),
      ],
    );
  }
}
