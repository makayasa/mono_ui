import 'package:mono_ui/mono_ui.dart';
import 'package:flutter/material.dart';

void main() => runApp(const DesignGallery());

class DesignGallery extends StatelessWidget {
  const DesignGallery({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: monoTheme(),
    home: Scaffold(
      appBar: AppBar(title: const Text('Mono UI')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 640),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Chip(
                      label: Text('Ink'),
                      backgroundColor: ink,
                      labelStyle: TextStyle(color: paper),
                    ),
                    Chip(label: Text('Paper'), backgroundColor: paper),
                    Chip(
                      label: Text('Muted'),
                      backgroundColor: muted,
                      labelStyle: TextStyle(color: paper),
                    ),
                    Chip(label: Text('Chip'), backgroundColor: chip),
                    Chip(label: Text('Line'), backgroundColor: line),
                  ],
                ),
                const SizedBox(height: 24),
                const MonoStatCard(
                  label: 'Completed tasks',
                  value: '128',
                  caption: 'Last 7 days',
                  icon: Icons.task_alt,
                ),
                const SizedBox(height: 24),
                MonoPanel(
                  title: 'Profile',
                  subtitle: 'Material widgets use the Mono UI theme.',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const TextField(
                        decoration: InputDecoration(labelText: 'Name'),
                      ),
                      const SizedBox(height: 16),
                      FilledButton(onPressed: () {}, child: const Text('Save')),
                      const SizedBox(height: 8),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text('Cancel'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
