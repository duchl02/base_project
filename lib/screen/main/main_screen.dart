import 'package:auto_route/auto_route.dart';
import 'package:base_project/data/repositories/post/post_repository.dart';
import 'package:base_project/di/di.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello world'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              context.t.core.home,
            ),
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
