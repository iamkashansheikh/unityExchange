import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unity_exchange_app/Controllers/webview_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  final WebViewControllerX webCtrl = Get.put(WebViewControllerX());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text("WebView"),
        //   actions: [
        //     IconButton(
        //       icon: Icon(Icons.refresh),
        //       onPressed: webCtrl.reloadPage,
        //     ),
        //   ],
        // ),
        body: Stack(
          children: [
            WebViewWidget(controller: webCtrl.webViewController),
            Obx(() => webCtrl.isLoading.value
                ? Center(child: CircularProgressIndicator())
                : SizedBox.shrink()),
          ],
        ),
      ),
    );
  }
}
