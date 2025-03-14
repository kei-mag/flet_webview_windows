import 'package:flet/flet.dart';

import 'flet_webview_windows.dart';

CreateControlFactory createControl = (CreateControlArgs args) {
  switch (args.control.type) {
    case "flet_webview_windows":
      return FletWebviewWindowsControl(
        parent: args.parent,
        control: args.control,
      );
    default:
      return null;
  }
};

void ensureInitialized() {
  // nothing to initialize
}
