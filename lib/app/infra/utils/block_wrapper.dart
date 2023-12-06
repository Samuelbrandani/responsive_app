import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BlockWrapper extends StatelessWidget {
  final Widget child;

  const BlockWrapper({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveConstraints(
      conditionalConstraints: blockWidthConstraints,
      child: child,
    );
  }
}

List<Condition> blockWidthConstraints = [
  Condition.equals(
    name: MOBILE,
    value: const BoxConstraints(maxWidth: 600),
  ),
  Condition.equals(
    name: TABLET,
    value: const BoxConstraints(
      maxWidth: 700,
    ),
  ),
  Condition.largerThan(
    name: TABLET,
    value: const BoxConstraints(maxWidth: 1280),
  ),
];
