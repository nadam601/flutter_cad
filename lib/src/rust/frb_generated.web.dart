// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

// Static analysis wrongly picks the IO variant, thus ignore this
// ignore_for_file: argument_type_not_assignable

import 'api/api_types.dart';
import 'api/simple.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  int dco_decode_CastedPrimitive_u_64(dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  APICamera dco_decode_api_camera(dynamic raw);

  @protected
  APIVec2 dco_decode_api_vec_2(dynamic raw);

  @protected
  APIVec3 dco_decode_api_vec_3(dynamic raw);

  @protected
  APICamera dco_decode_box_autoadd_api_camera(dynamic raw);

  @protected
  APIVec2 dco_decode_box_autoadd_api_vec_2(dynamic raw);

  @protected
  APIVec3 dco_decode_box_autoadd_api_vec_3(dynamic raw);

  @protected
  NodeNetworkView dco_decode_box_autoadd_node_network_view(dynamic raw);

  @protected
  double dco_decode_f_32(dynamic raw);

  @protected
  double dco_decode_f_64(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  List<NodeView> dco_decode_list_node_view(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  NodeNetworkView dco_decode_node_network_view(dynamic raw);

  @protected
  NodeView dco_decode_node_view(dynamic raw);

  @protected
  APICamera? dco_decode_opt_box_autoadd_api_camera(dynamic raw);

  @protected
  NodeNetworkView? dco_decode_opt_box_autoadd_node_network_view(dynamic raw);

  @protected
  BigInt dco_decode_u_64(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  int sse_decode_CastedPrimitive_u_64(SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  APICamera sse_decode_api_camera(SseDeserializer deserializer);

  @protected
  APIVec2 sse_decode_api_vec_2(SseDeserializer deserializer);

  @protected
  APIVec3 sse_decode_api_vec_3(SseDeserializer deserializer);

  @protected
  APICamera sse_decode_box_autoadd_api_camera(SseDeserializer deserializer);

  @protected
  APIVec2 sse_decode_box_autoadd_api_vec_2(SseDeserializer deserializer);

  @protected
  APIVec3 sse_decode_box_autoadd_api_vec_3(SseDeserializer deserializer);

  @protected
  NodeNetworkView sse_decode_box_autoadd_node_network_view(
      SseDeserializer deserializer);

  @protected
  double sse_decode_f_32(SseDeserializer deserializer);

  @protected
  double sse_decode_f_64(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  List<NodeView> sse_decode_list_node_view(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  NodeNetworkView sse_decode_node_network_view(SseDeserializer deserializer);

  @protected
  NodeView sse_decode_node_view(SseDeserializer deserializer);

  @protected
  APICamera? sse_decode_opt_box_autoadd_api_camera(
      SseDeserializer deserializer);

  @protected
  NodeNetworkView? sse_decode_opt_box_autoadd_node_network_view(
      SseDeserializer deserializer);

  @protected
  BigInt sse_decode_u_64(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  void sse_encode_CastedPrimitive_u_64(int self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_api_camera(APICamera self, SseSerializer serializer);

  @protected
  void sse_encode_api_vec_2(APIVec2 self, SseSerializer serializer);

  @protected
  void sse_encode_api_vec_3(APIVec3 self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_api_camera(
      APICamera self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_api_vec_2(APIVec2 self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_api_vec_3(APIVec3 self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_node_network_view(
      NodeNetworkView self, SseSerializer serializer);

  @protected
  void sse_encode_f_32(double self, SseSerializer serializer);

  @protected
  void sse_encode_f_64(double self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_list_node_view(List<NodeView> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_node_network_view(
      NodeNetworkView self, SseSerializer serializer);

  @protected
  void sse_encode_node_view(NodeView self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_api_camera(
      APICamera? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_node_network_view(
      NodeNetworkView? self, SseSerializer serializer);

  @protected
  void sse_encode_u_64(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
extension type RustLibWasmModule._(JSObject _) implements JSObject {}
