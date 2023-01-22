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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Theme'),
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
                    value: Get.isDarkMode ? true : false,
                    activeColor: theme.colorScheme.primary,
                    onChanged: (bool value) {
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
