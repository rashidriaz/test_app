import 'package:flutter/material.dart';
import 'package:test_app/utils/utils.dart';
import 'package:uni_links/uni_links.dart';
import 'dart:async';

class DeepLinks extends ChangeNotifier {
  Uri? _link;

  DeepLinks() {
    _initDeepLinkListener();
  }


  Uri? get link => _link;

  Future<void> _initDeepLinkListener() async {
    _getInitialLink();
    _getCurrentLink();
  }

  Future<void> _getCurrentLink() async {

    uriLinkStream.listen((Uri? uri) {
      _link = uri;
      notifyListeners();
    }, onError: (e) {
      //TODO
    });
  }

  Future<void> _getInitialLink() async {
    try {
      final initialUri = await getInitialUri();
      if (initialUri != null) {
        _link = initialUri;
        notifyListeners();
      }
    } catch (e) {
     //TODO
    }
  }


  Route<dynamic>? handleDeepLinkNavigation(BuildContext context) {
    if (_link != null) {
      final route = _generateDeepLinkRoute(_link!);
      _link = null; // Reset after processing
      return route;
    }
    return null;
  }
  Route<dynamic>? _generateDeepLinkRoute(Uri uri) {
    return RouteManager.generateRoute(RouteSettings(name: uri.path));
  }
}
