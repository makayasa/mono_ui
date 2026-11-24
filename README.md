# Mono UI

A monochrome Material 3 theme and reusable presentation components for Flutter apps.
Mono UI has no product labels, currency formatting, authentication, routing, state management, or API dependencies.

## Use the local package

Keep the package beside your Flutter app. Add this dependency to your app's `pubspec.yaml`:

```yaml
dependencies:
  mono_ui:
    path: ../mono_ui
```

Run `flutter pub get`. Import the public library:

```dart
import 'package:flutter/material.dart';
import 'package:mono_ui/mono_ui.dart';

MaterialApp(
	theme: monoTheme(),
	home: const Scaffold(
		body: MonoPanel(
			title: 'Overview',
			subtitle: 'Last 7 days',
			child: MonoStatCard(
				label: 'Completed tasks',
				value: '128',
				caption: 'Across all projects',
				icon: Icons.task_alt,
			),
		),
	),
);
```

Enable `uses-material-design: true` in the consuming app to include Material icons.
Your app owns labels, localization, value formatting, data loading, and responsive grid layout.
Values can represent tasks, users, sales, or any other statistic.

## Public API

| API | Purpose |
| --- | --- |
| `monoTheme()` | Light Material 3 theme, typography, fields, buttons, and progress indicators. |
| `ink` | `#191919`, primary text and actions. |
| `paper` | `#FFFFFF`, page background. |
| `muted` | `#787774`, secondary text. |
| `chip` | `#F1F1EF`, subdued backgrounds. |
| `line` | `#E9E9E7`, borders and dividers. |
| `MonoPanel` | Bordered panel with a required title, optional subtitle, and required child. |
| `MonoStatCard` | Bordered statistic card with a required label, formatted value, caption, and icon. |

## Customize the theme

Use Flutter's `ThemeData.copyWith()` to adjust standard Material components without a package-specific configuration layer.
For example, replace the text theme with your app's typography:

```dart
final base = monoTheme();
final theme = base.copyWith(
	textTheme: base.textTheme.copyWith(
		headlineSmall: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
	),
);
```

Mono UI supplies a fixed light monochrome palette. Panels and statistic cards retain that palette.
It does not supply dark mode or arbitrary brand palettes.

## Run the gallery

Use Flutter 3.47.8 and Dart 3.13.7 or compatible newer versions.

```sh
cd example
flutter pub get
flutter run -d chrome
```

The independent gallery displays the palette, a task statistic, a profile panel, a text field, and buttons.
It does not require a backend or another application checkout.

## Verify the package

```sh
flutter pub get
cd example
flutter pub get
cd ..
dart format --output=none --set-exit-if-changed lib test example/lib
flutter analyze --no-pub
flutter test --no-pub
cd example
flutter build web
```

## GitHub handoff

This is a local Git repository without a remote. No GitHub repository is required for local use.
After creating the GitHub repository, add its URL as the `origin` remote and push the reviewed commit.
Then replace your app's path dependency with a Git dependency pinned to a commit or release tag.
Keep the local path dependency until that remote exists.

`publish_to: none` prevents accidental publication to pub.dev.
No license is granted by this repository. Choose a license before public distribution.
