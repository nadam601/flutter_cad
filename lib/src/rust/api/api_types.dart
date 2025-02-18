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

class InputPinView {
  final String name;
  final String dataType;
  final bool multi;

  const InputPinView({
    required this.name,
    required this.dataType,
    required this.multi,
  });

  @override
  int get hashCode => name.hashCode ^ dataType.hashCode ^ multi.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InputPinView &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          dataType == other.dataType &&
          multi == other.multi;
}

class NodeNetworkView {
  final String name;
  final Map<BigInt, NodeView> nodes;
  final List<WireView> wires;

  const NodeNetworkView({
    required this.name,
    required this.nodes,
    required this.wires,
  });

  @override
  int get hashCode => name.hashCode ^ nodes.hashCode ^ wires.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NodeNetworkView &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          nodes == other.nodes &&
          wires == other.wires;
}

class NodeView {
  final BigInt id;
  final String nodeTypeName;
  APIVec2 position;
  final List<InputPinView> inputPins;
  final String outputType;
  final bool selected;
  final bool displayed;

  NodeView({
    required this.id,
    required this.nodeTypeName,
    required this.position,
    required this.inputPins,
    required this.outputType,
    required this.selected,
    required this.displayed,
  });

  @override
  int get hashCode =>
      id.hashCode ^
      nodeTypeName.hashCode ^
      position.hashCode ^
      inputPins.hashCode ^
      outputType.hashCode ^
      selected.hashCode ^
      displayed.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NodeView &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          nodeTypeName == other.nodeTypeName &&
          position == other.position &&
          inputPins == other.inputPins &&
          outputType == other.outputType &&
          selected == other.selected &&
          displayed == other.displayed;
}

class WireView {
  final BigInt sourceNodeId;
  final BigInt destNodeId;
  final BigInt destParamIndex;
  final bool selected;

  const WireView({
    required this.sourceNodeId,
    required this.destNodeId,
    required this.destParamIndex,
    required this.selected,
  });

  @override
  int get hashCode =>
      sourceNodeId.hashCode ^
      destNodeId.hashCode ^
      destParamIndex.hashCode ^
      selected.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WireView &&
          runtimeType == other.runtimeType &&
          sourceNodeId == other.sourceNodeId &&
          destNodeId == other.destNodeId &&
          destParamIndex == other.destParamIndex &&
          selected == other.selected;
}
