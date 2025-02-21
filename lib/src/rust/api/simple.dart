// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'api_types.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored because they are not marked as `pub`: `add_sample_model`, `add_sample_network`, `from_api_ivec3`, `from_api_vec2`, `from_api_vec3`, `generate_mock_image`, `initialize_cad_instance_async`, `refresh_renderer`, `send_texture`, `to_api_ivec3`, `to_api_vec2`, `to_api_vec3`
// These types are ignored because they are not used by any `pub` functions: `CADInstance`, `RGBA_FUNCTION`, `TEXTURE_RGBA_RENDERER_PLUGIN`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `deref`, `deref`, `initialize`, `initialize`

double provideTexture({required int texturePtr}) =>
    RustLib.instance.api.crateApiSimpleProvideTexture(texturePtr: texturePtr);

APICamera? getCamera() => RustLib.instance.api.crateApiSimpleGetCamera();

void moveCamera(
        {required APIVec3 eye, required APIVec3 target, required APIVec3 up}) =>
    RustLib.instance.api
        .crateApiSimpleMoveCamera(eye: eye, target: target, up: up);

void addAtom({required int atomicNumber, required APIVec3 position}) =>
    RustLib.instance.api
        .crateApiSimpleAddAtom(atomicNumber: atomicNumber, position: position);

APIVec3 findPivotPoint({required APIVec3 rayStart, required APIVec3 rayDir}) =>
    RustLib.instance.api
        .crateApiSimpleFindPivotPoint(rayStart: rayStart, rayDir: rayDir);

NodeNetworkView? getNodeNetworkView({required String nodeNetworkName}) =>
    RustLib.instance.api
        .crateApiSimpleGetNodeNetworkView(nodeNetworkName: nodeNetworkName);

void moveNode(
        {required String nodeNetworkName,
        required BigInt nodeId,
        required APIVec2 position}) =>
    RustLib.instance.api.crateApiSimpleMoveNode(
        nodeNetworkName: nodeNetworkName, nodeId: nodeId, position: position);

void connectNodes(
        {required String nodeNetworkName,
        required BigInt sourceNodeId,
        required BigInt destNodeId,
        required BigInt destParamIndex}) =>
    RustLib.instance.api.crateApiSimpleConnectNodes(
        nodeNetworkName: nodeNetworkName,
        sourceNodeId: sourceNodeId,
        destNodeId: destNodeId,
        destParamIndex: destParamIndex);

List<String>? getNodeTypeNames() =>
    RustLib.instance.api.crateApiSimpleGetNodeTypeNames();

void setNodeDisplay(
        {required String nodeNetworkName,
        required BigInt nodeId,
        required bool isDisplayed}) =>
    RustLib.instance.api.crateApiSimpleSetNodeDisplay(
        nodeNetworkName: nodeNetworkName,
        nodeId: nodeId,
        isDisplayed: isDisplayed);

bool selectNode({required String nodeNetworkName, required BigInt nodeId}) =>
    RustLib.instance.api.crateApiSimpleSelectNode(
        nodeNetworkName: nodeNetworkName, nodeId: nodeId);

bool selectWire(
        {required String nodeNetworkName,
        required BigInt sourceNodeId,
        required BigInt destinationNodeId,
        required BigInt destinationArgumentIndex}) =>
    RustLib.instance.api.crateApiSimpleSelectWire(
        nodeNetworkName: nodeNetworkName,
        sourceNodeId: sourceNodeId,
        destinationNodeId: destinationNodeId,
        destinationArgumentIndex: destinationArgumentIndex);

void clearSelection({required String nodeNetworkName}) => RustLib.instance.api
    .crateApiSimpleClearSelection(nodeNetworkName: nodeNetworkName);

APICuboidData? getCuboidData(
        {required String nodeNetworkName, required BigInt nodeId}) =>
    RustLib.instance.api.crateApiSimpleGetCuboidData(
        nodeNetworkName: nodeNetworkName, nodeId: nodeId);

APISphereData? getSphereData(
        {required String nodeNetworkName, required BigInt nodeId}) =>
    RustLib.instance.api.crateApiSimpleGetSphereData(
        nodeNetworkName: nodeNetworkName, nodeId: nodeId);

APIHalfSpaceData? getHalfSpaceData(
        {required String nodeNetworkName, required BigInt nodeId}) =>
    RustLib.instance.api.crateApiSimpleGetHalfSpaceData(
        nodeNetworkName: nodeNetworkName, nodeId: nodeId);

void setCuboidData(
        {required String nodeNetworkName,
        required BigInt nodeId,
        required APICuboidData data}) =>
    RustLib.instance.api.crateApiSimpleSetCuboidData(
        nodeNetworkName: nodeNetworkName, nodeId: nodeId, data: data);

void setSphereData(
        {required String nodeNetworkName,
        required BigInt nodeId,
        required APISphereData data}) =>
    RustLib.instance.api.crateApiSimpleSetSphereData(
        nodeNetworkName: nodeNetworkName, nodeId: nodeId, data: data);

void setHalfSpaceData(
        {required String nodeNetworkName,
        required BigInt nodeId,
        required APIHalfSpaceData data}) =>
    RustLib.instance.api.crateApiSimpleSetHalfSpaceData(
        nodeNetworkName: nodeNetworkName, nodeId: nodeId, data: data);

String greet({required String name}) =>
    RustLib.instance.api.crateApiSimpleGreet(name: name);
