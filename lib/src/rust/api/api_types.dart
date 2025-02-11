// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

class APICamera {
  final APIVec3 eye;
  final APIVec3 target;
  final APIVec3 up;
  final double aspect;
  final double fovy;
  final double znear;
  final double zfar;

  const APICamera({
    required this.eye,
    required this.target,
    required this.up,
    required this.aspect,
    required this.fovy,
    required this.znear,
    required this.zfar,
  });

  @override
  int get hashCode =>
      eye.hashCode ^
      target.hashCode ^
      up.hashCode ^
      aspect.hashCode ^
      fovy.hashCode ^
      znear.hashCode ^
      zfar.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is APICamera &&
          runtimeType == other.runtimeType &&
          eye == other.eye &&
          target == other.target &&
          up == other.up &&
          aspect == other.aspect &&
          fovy == other.fovy &&
          znear == other.znear &&
          zfar == other.zfar;
}

class APIVec2 {
  final double x;
  final double y;

  const APIVec2({
    required this.x,
    required this.y,
  });

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is APIVec2 &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y;
}

class APIVec3 {
  final double x;
  final double y;
  final double z;

  const APIVec3({
    required this.x,
    required this.y,
    required this.z,
  });

  @override
  int get hashCode => x.hashCode ^ y.hashCode ^ z.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is APIVec3 &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y &&
          z == other.z;
}

class NodeNetworkView {
  final List<NodeView> nodes;

  const NodeNetworkView({
    required this.nodes,
  });

  @override
  int get hashCode => nodes.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NodeNetworkView &&
          runtimeType == other.runtimeType &&
          nodes == other.nodes;
}

class NodeView {
  final BigInt id;
  final String nodeTypeName;
  final APIVec2 position;

  const NodeView({
    required this.id,
    required this.nodeTypeName,
    required this.position,
  });

  @override
  int get hashCode => id.hashCode ^ nodeTypeName.hashCode ^ position.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NodeView &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          nodeTypeName == other.nodeTypeName &&
          position == other.position;
}
