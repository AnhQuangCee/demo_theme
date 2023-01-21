import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'theme_config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: DAppTheme.lightTheme,
      darkTheme: DAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter Demo Theme'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool themeMode = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150),
            Text(
              'Hello Material 3',
              style: theme.textTheme.headlineLarge,
            ),
            Text(
              'Subtitle',
              style: theme.textTheme.subtitle1,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dark mode",
                    style: theme.textTheme.bodyMedium,
                  ),
                  Switch(
                    value: themeMode,
                    activeColor: theme.colorScheme.primary,
                    onChanged: (bool value) {
                      setState(() {
                        themeMode = value;
                      });

                      Get.isDarkMode
                          ? Get.changeTheme(DAppTheme.lightTheme)
                          : Get.changeTheme(DAppTheme.darkTheme);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
