import 'package:flet/flet.dart';
import 'package:flutter/material.dart';
import 'package:webview_windows/webview_windows.dart';

class FletWebviewWindowsControl extends StatelessWidget {
  final Control? parent;
  final Control control;

  const FletWebviewWindowsControl({
    super.key,
    required this.parent,
    required this.control,
  });

  @override
  Widget build(BuildContext context) {
    String text = control.attrString("value", "")!;
    WebviewController controller = WebviewController();
    controller.loadStringContent("<html lang=\"en\"><body><h1>$text</h1></body></html>");
    Widget myControl = Webview(controller);


    return constrainedControl(context, myControl, parent, control);
  }
}
