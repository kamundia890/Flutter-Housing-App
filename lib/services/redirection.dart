import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:house/models/user.dart';
import 'package:house/services/auth.dart';

import 'package:house/authenticate.dart';
import 'package:house/map.dart';
import 'package:house/wrapper.dart';

class RedirectionService {

  StreamBuilder builder = StreamBuilder(
    stream: AuthService().user,
    builder: (context, snapshot) {
      switch (snapshot.connectionState) {
        case ConnectionState.none:
        case ConnectionState.done:
        case ConnectionState.waiting:
        case ConnectionState.active:
          if (snapshot.data == null) {
           return Authenticate();
          } else {
          return Provider<User>(
              create: (_) => snapshot.data,
              child: Home(),
           );
         }
        break;
        default:
        return Authenticate();
      }
    },
  );

}