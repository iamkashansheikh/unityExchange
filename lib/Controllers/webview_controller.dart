import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewControllerX extends GetxController {
  late final WebViewController webViewController;
  var isLoading = true.obs; // Observable for loading state

  @override
  void onInit() {
    super.onInit();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) => isLoading.value = true,
          onPageFinished: (url) => isLoading.value = false,
        ),
      )
      ..loadRequest(Uri.parse("https://unityexch.com/home")); // Apna URL dalna
  }

  void reloadPage() {
    webViewController.reload();
  }
}
