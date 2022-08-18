import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../methods/methods_user.dart';
import '../models/model_photo.dart';
import '../models/model_user.dart';

class ScreenUser extends StatefulWidget {
  final int userId;

  const ScreenUser({Key? key, required this.userId}) : super(key: key);

  @override
  State<ScreenUser> createState() => _ScreenUserState();
}

class _ScreenUserState extends State<ScreenUser> {
  late final ValueNotifier<ModelUser> userNotifier;

  Future<void> reloadUser() async {
    final user = await MethodsUser.getUser(widget.userId);
    userNotifier.value = user;
  }

  @override
  void initState() {
    userNotifier = ValueNotifier<ModelUser>(ModelUser(id: widget.userId));
    reloadUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              actions: const <Widget>[],
              expandedHeight: min(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.zero,
                centerTitle: true,
                title: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: ValueListenableBuilder<ModelUser>(
                      valueListenable: userNotifier,
                      builder: (context, user, _) => Text(user.name ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.black54),
                      ),
                  ),
                ),
                background: FutureBuilder<List<ModelPhoto>>(
                  future: MethodsUser.getPhoto(3),
                  builder: (context, snapshot) {
                    final list = snapshot.data;
                    if (list == null) return Container(color: Colors.grey);
                    debugPrint(list.first.url);
                    return CarouselSlider(
                      items: list.map((e) => Image.network(
                          e.url,
                          errorBuilder: (context, error, _) => Container(
                            color: Colors.grey,
                            padding: const EdgeInsets.all(16.0),
                            child: Center(child: Text(error.toString())),
                          ),
                      )).toList(),
                      options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 0.85,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        aspectRatio: 0.85,
                        initialPage: 0,
                      ),
                    );
                  },
                ),
              ),
            ),
          ];
        },
        body: ValueListenableBuilder<ModelUser>(
          valueListenable: userNotifier,
          builder: (context, user, _) => ListView(children: [
            ListTile(
              title: Text(S.current.name),
              subtitle: Text(user.name ?? ''),
            ),
            const Divider(),
            ListTile(
              title: Text(S.current.username),
              subtitle: Text(user.username ?? ''),
            ),
            const Divider(),
            ListTile(
              title: Text(S.current.email),
              subtitle: Text(user.email ?? ''),
            ),
            const Divider(),
            if (user.address != null)
              ListTile(
                title: Text(S.current.address),
                subtitle: Column(mainAxisSize: MainAxisSize.min, children: [
                  ListTile(
                    title: Text(S.current.street),
                    subtitle: Text(user.address?.street ?? ''),
                  ),
                  ListTile(
                    title: Text(S.current.suite),
                    subtitle: Text(user.address?.suite ?? ''),
                  ),
                  ListTile(
                    title: Text(S.current.city),
                    subtitle: Text(user.address?.city ?? ''),
                  ),
                  ListTile(
                    title: Text(S.current.zipcode),
                    subtitle: Text(user.address?.zipcode ?? ''),
                  ),
                  if (user.address?.geo != null)
                  ListTile(
                    title: Text(S.current.geo),
                    subtitle: Text('${user.address?.geo?.lat}, ${user.address?.geo?.lng}'),
                  ),
                ]),
              ),
            const Divider(),
            ListTile(
              title: Text(S.current.phone),
              subtitle: Text(user.phone ?? ''),
            ),
            const Divider(),
            ListTile(
              title: Text(S.current.website),
              subtitle: Text(user.website ?? ''),
            ),
            const Divider(),
            if (user.company != null)
              ListTile(
                title: Text(S.current.company),
                subtitle: Column(mainAxisSize: MainAxisSize.min, children: [
                  ListTile(
                    title: Text(S.current.name),
                    subtitle: Text(user.company?.name ?? ''),
                  ),
                  ListTile(
                    title: Text(S.current.catchPhrase),
                    subtitle: Text(user.company?.catchPhrase ?? ''),
                  ),
                  ListTile(
                    title: Text(S.current.bs),
                    subtitle: Text(user.company?.bs ?? ''),
                  ),
                ]),
              ),
          ]),
        ),
      ),
    );
  }
}
