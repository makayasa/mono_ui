import 'package:flutter/material.dart';

import 'theme.dart';

class MonoPanel extends StatelessWidget {
  const MonoPanel({
    super.key,
    required this.title,
    this.subtitle,
    required this.child,
  });
  final String title;
  final String? subtitle;
  final Widget child;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      border: Border.all(color: line),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        if (subtitle != null) ...[
          const SizedBox(height: 4),
          Text(subtitle!, style: Theme.of(context).textTheme.bodySmall),
        ],
        const SizedBox(height: 24),
        child,
      ],
    ),
  );
}
