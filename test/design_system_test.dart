import 'package:mono_ui/mono_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('theme retains the monochrome palette and typography', () {
    final theme = monoTheme();
    expect(ink, const Color(0xFF191919));
    expect(paper, const Color(0xFFFFFFFF));
    expect(muted, const Color(0xFF787774));
    expect(chip, const Color(0xFFF1F1EF));
    expect(line, const Color(0xFFE9E9E7));
    expect(theme.colorScheme.primary, ink);
    expect(theme.colorScheme.onPrimary, paper);
    expect(theme.scaffoldBackgroundColor, paper);
    expect(theme.dividerColor, line);
    expect(theme.textTheme.headlineSmall?.fontSize, 24);
    expect(
      theme.filledButtonTheme.style?.minimumSize?.resolve({}),
      const Size(48, 48),
    );
  });

  for (final scale in [1.0, 2.0]) {
    testWidgets('components display caller content at 320px and scale $scale', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(320, 1000);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(),
          home: MediaQuery(
            data: MediaQueryData(textScaler: TextScaler.linear(scale)),
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    MonoPanel(
                      title: 'Formulir',
                      subtitle: 'Isi data',
                      child: FilledButton(
                        onPressed: () {},
                        child: const Text('Simpan'),
                      ),
                    ),
                    const MonoPanel(
                      title: 'Tanpa subtitle',
                      child: Text('Konten'),
                    ),
                    const MonoStatCard(
                      label: 'Completed tasks this week',
                      value: '128',
                      caption: 'Last 7 days',
                      icon: Icons.task_alt,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
      expect(find.text('Formulir'), findsOneWidget);
      expect(find.text('Isi data'), findsOneWidget);
      expect(find.text('Tanpa subtitle'), findsOneWidget);
      expect(find.text('Konten'), findsOneWidget);
      expect(find.text('Completed tasks this week'), findsOneWidget);
      expect(find.text('128'), findsOneWidget);
      expect(find.text('Last 7 days'), findsOneWidget);
      expect(find.byIcon(Icons.task_alt), findsOneWidget);
      await tester.tap(find.text('Simpan'));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  }
}
