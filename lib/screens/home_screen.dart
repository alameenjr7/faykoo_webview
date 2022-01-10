import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
 
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final Completer<WebViewController> _controller = Completer<WebViewController>();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://wallet.faykoo.com/public/mobile',
          gestureRecognizers: Set()
            ..add(Factory<VerticalDragGestureRecognizer>(
              () => VerticalDragGestureRecognizer()
            )),
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);      
          },
        ),
      ),
    );
  }
}
