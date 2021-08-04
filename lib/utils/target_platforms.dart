import 'dart:io';

import 'package:flutter/foundation.dart';

class _TargetPlatforms {
  //General Platform groups
  bool isDesktop() => !kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS);
  bool isMobile() => !kIsWeb && ( Platform.isAndroid || Platform.isIOS || Platform.isFuchsia );
  bool isWeb() => kIsWeb;

  //Specific platform groups
  bool isWindows() => !kIsWeb && Platform.isWindows;
  bool isLinux() => !kIsWeb && Platform.isLinux;
  bool isMacOS() => !kIsWeb && Platform.isMacOS;
  bool isAndroid() => !kIsWeb && Platform.isAndroid;
  bool isIOS() => !kIsWeb && Platform.isIOS;
  bool isFuchsia() => !kIsWeb && Platform.isFuchsia;
}

final platform = _TargetPlatforms();