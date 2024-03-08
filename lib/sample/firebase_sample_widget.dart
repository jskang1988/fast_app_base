import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import ".//firebase_options.dart";
import 'dart:convert';

class FirebaseSampleWidget extends StatelessWidget {
  const FirebaseSampleWidget({super.key});

  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("앱임")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FutureBuilder(
                    future: getFirebaseString(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      return Text(snapshot.data.toString());
                    })
              ],
            ),
          ),
        )
    );
  }

  Future<String> getFirebaseString() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    initializeRemote() async {
      // remoteConfig = await setupRemoteConfig();
      //!- must be active firebase remote config
      bool updated = await remoteConfig.fetchAndActivate();
      if (updated) {
        print("found");
        // the config has been updated, new parameter values are available.
      } else {
        print("not print");
        // the config values were previously updated.
      }
      await remoteConfig.ensureInitialized();
    }
    await initializeRemote();

    var rawData = remoteConfig.getAll()["testRemoteConfigJson"];
    var map = jsonDecode(rawData?.asString() ?? "");
    print(map);

    FirebaseMessaging firebase = FirebaseMessaging.instance;
    await firebase.requestPermission();
    final deviceToken = await firebase.getToken();
    print("token:" + "$deviceToken");

    String str = remoteConfig.getString("testRemoteConfigString");
    print(str);
    return str;
  }
}