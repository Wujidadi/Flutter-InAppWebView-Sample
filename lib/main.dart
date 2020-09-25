import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:inappwebview_test/screens/chrome_safari_browser_example.screen.dart';
import 'package:inappwebview_test/screens/headless_in_app_webview.screen.dart';
import 'package:inappwebview_test/screens/in_app_webiew_example.screen.dart';
import 'package:inappwebview_test/screens/in_app_browser_example.screen.dart';

void main() async
{
    debugPaintSizeEnabled = false;

    WidgetsFlutterBinding.ensureInitialized();

    runApp(InAppWebViewApp());
}

Drawer myDrawer({@required BuildContext context})
{
    return Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
                DrawerHeader(
                    child: Text('flutter_inappbrowser example'),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                    ),
                ),
                ListTile(
                    title: Text('InAppBrowser'),
                    onTap: () {
                        Navigator.pushReplacementNamed(context, '/InAppBrowser');
                    },
                ),
                ListTile(
                    title: Text('ChromeSafariBrowser'),
                    onTap: () {
                        Navigator.pushReplacementNamed(context, '/ChromeSafariBrowser');
                    },
                ),
                ListTile(
                    title: Text('InAppWebView'),
                    onTap: () {
                        Navigator.pushReplacementNamed(context, '/');
                    },
                ),
                ListTile(
                    title: Text('HeadlessInAppWebView'),
                    onTap: () {
                        Navigator.pushReplacementNamed(context, '/HeadlessInAppWebView');
                    },
                ),
            ],
        ),
    );
}

class InAppWebViewApp extends StatefulWidget
{
    @override
    _InAppWebViewAppState createState() => _InAppWebViewAppState();
}

class _InAppWebViewAppState extends State<InAppWebViewApp>
{
    @override
    void initState()
    {
        super.initState();
    }

    @override
    void dispose()
    {
        super.dispose();
    }

    @override
    Widget build(BuildContext context)
    {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            routes: {
                '/': (context) => InAppWebViewExampleScreen(),
                '/InAppBrowser': (context) => InAppBrowserExampleScreen(),
                '/ChromeSafariBrowser': (context) => ChromeSafariBrowserExampleScreen(),
                '/HeadlessInAppWebView': (context) => HeadlessInAppWebViewExampleScreen()
            }
        );
    }
}
