import 'package:flutter/material.dart';

class ConstrainedCard extends StatelessWidget {
  const ConstrainedCard({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'constrained_card',
      child: ConstrainedBox(
        constraints:
            const BoxConstraints(maxWidth: 500, minHeight: 200, minWidth: 500),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
