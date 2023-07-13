import 'package:auto_route/auto_route.dart';
import 'package:base_project/data/repositories/post/post_repository.dart';
import 'package:base_project/di/di.dart';
import 'package:base_project/resource/styles/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../i18n/strings.g.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> callMockApi() async {
    final PostRepository postRepository = getIt.get<PostRepository>();

    await postRepository.findPostById(2);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Hello world', style: theme.textTheme.titleMedium),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100.sp,
              height: 100.sp,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
              margin: EdgeInsets.all(20),
              child: Text('Hello world',
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: theme.colorScheme.primary)),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => callMockApi(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
