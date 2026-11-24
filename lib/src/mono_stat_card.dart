import 'package:flutter/material.dart';

import 'theme.dart';

class MonoStatCard extends StatelessWidget {
  const MonoStatCard({
    super.key,
    required this.label,
    required this.value,
    required this.caption,
    required this.icon,
  });

  final String label;
  final String value;
  final String caption;
  final IconData icon;

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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                label,
                style: const TextStyle(color: muted, fontSize: 12),
              ),
            ),
            const SizedBox(width: 8),
            Icon(icon, size: 18, color: muted),
          ],
        ),
        const SizedBox(height: 20),
        Text(value, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 8),
        Text(caption, style: Theme.of(context).textTheme.bodySmall),
      ],
    ),
  );
}
