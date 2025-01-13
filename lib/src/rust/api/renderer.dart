// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Renderer>>
abstract class Renderer implements RustOpaqueInterface {
  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<Renderer> newInstance(
          {required int width, required int height}) =>
      RustLib.instance.api
          .crateApiRendererRendererNew(width: width, height: height);

  Future<Uint8List> render();
}
