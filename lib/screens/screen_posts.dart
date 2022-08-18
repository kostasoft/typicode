import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../generated/l10n.dart';
import '../methods/methods_posts.dart';
import '../models/model_post.dart';
import 'screen_profile.dart';
import 'screen_user.dart';

class ScreenPosts extends StatelessWidget {
  const ScreenPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(S.current.posts),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ScreenProfile())),
            icon: const Icon(Icons.person),
          )
        ],
      ),
      body: FutureBuilder<List<ModelPost>>(
        future: MethodsPost.getPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            FlutterNativeSplash.remove();
          }
          final list = snapshot.data;
          if (list == null) {
            return const SizedBox.shrink();
          }
          return ListView(
            padding: const EdgeInsets.all(16.0),
            children: list.map((post) => Card(
                  child: ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.body),
                    trailing: IconButton(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenUser(userId: post.userId))),
                    ),
                  ),
                )).toList(),
          );
        },
      ),
    );
  }
}
