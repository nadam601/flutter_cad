// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/api_types.dart';
import 'api/simple.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'frb_generated.io.dart'
    if (dart.library.js_interop) 'frb_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class RustLib extends BaseEntrypoint<RustLibApi, RustLibApiImpl, RustLibWire> {
  @internal
  static final instance = RustLib._();

  RustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    RustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Initialize flutter_rust_bridge in mock mode.
  /// No libraries for FFI are loaded.
  static void initMock({
    required RustLibApi api,
  }) {
    instance.initMockImpl(
      api: api,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<RustLibApiImpl, RustLibWire> get apiImplConstructor =>
      RustLibApiImpl.new;

  @override
  WireConstructor<RustLibWire> get wireConstructor =>
      RustLibWire.fromExternalLibrary;

  @override
  Future<void> executeRustInitializers() async {
    await api.crateApiSimpleInitApp();
  }

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig =>
      kDefaultExternalLibraryLoaderConfig;

  @override
  String get codegenVersion => '2.7.0';

  @override
  int get rustContentHash => -1572406354;

  static const kDefaultExternalLibraryLoaderConfig =
      ExternalLibraryLoaderConfig(
    stem: 'rust_lib_flutter_cad',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class RustLibApi extends BaseApi {
  void crateApiSimpleAddAtom(
      {required int atomicNumber, required APIVec3 position});

  void crateApiSimpleConnectNodes(
      {required String nodeNetworkName,
      required BigInt sourceNodeId,
      required BigInt destNodeId,
      required BigInt destParamIndex});

  APIVec3 crateApiSimpleFindPivotPoint(
      {required APIVec3 rayStart, required APIVec3 rayDir});

  APICamera? crateApiSimpleGetCamera();

  NodeNetworkView? crateApiSimpleGetNodeNetworkView(
      {required String nodeNetworkName});

  String crateApiSimpleGreet({required String name});

  Future<void> crateApiSimpleInitApp();

  void crateApiSimpleMoveCamera(
      {required APIVec3 eye, required APIVec3 target, required APIVec3 up});

  void crateApiSimpleMoveNode(
      {required String nodeNetworkName,
      required BigInt nodeId,
      required APIVec2 position});

  double crateApiSimpleProvideTexture({required int texturePtr});
}

class RustLibApiImpl extends RustLibApiImplPlatform implements RustLibApi {
  RustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  void crateApiSimpleAddAtom(
      {required int atomicNumber, required APIVec3 position}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_i_32(atomicNumber, serializer);
        sse_encode_box_autoadd_api_vec_3(position, serializer);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 1)!;
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSimpleAddAtomConstMeta,
      argValues: [atomicNumber, position],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSimpleAddAtomConstMeta => const TaskConstMeta(
        debugName: "add_atom",
        argNames: ["atomicNumber", "position"],
      );

  @override
  void crateApiSimpleConnectNodes(
      {required String nodeNetworkName,
      required BigInt sourceNodeId,
      required BigInt destNodeId,
      required BigInt destParamIndex}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(nodeNetworkName, serializer);
        sse_encode_u_64(sourceNodeId, serializer);
        sse_encode_u_64(destNodeId, serializer);
        sse_encode_usize(destParamIndex, serializer);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 2)!;
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSimpleConnectNodesConstMeta,
      argValues: [nodeNetworkName, sourceNodeId, destNodeId, destParamIndex],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSimpleConnectNodesConstMeta => const TaskConstMeta(
        debugName: "connect_nodes",
        argNames: [
          "nodeNetworkName",
          "sourceNodeId",
          "destNodeId",
          "destParamIndex"
        ],
      );

  @override
  APIVec3 crateApiSimpleFindPivotPoint(
      {required APIVec3 rayStart, required APIVec3 rayDir}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_box_autoadd_api_vec_3(rayStart, serializer);
        sse_encode_box_autoadd_api_vec_3(rayDir, serializer);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 3)!;
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_api_vec_3,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSimpleFindPivotPointConstMeta,
      argValues: [rayStart, rayDir],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSimpleFindPivotPointConstMeta =>
      const TaskConstMeta(
        debugName: "find_pivot_point",
        argNames: ["rayStart", "rayDir"],
      );

  @override
  APICamera? crateApiSimpleGetCamera() {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 4)!;
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_opt_box_autoadd_api_camera,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSimpleGetCameraConstMeta,
      argValues: [],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSimpleGetCameraConstMeta => const TaskConstMeta(
        debugName: "get_camera",
        argNames: [],
      );

  @override
  NodeNetworkView? crateApiSimpleGetNodeNetworkView(
      {required String nodeNetworkName}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(nodeNetworkName, serializer);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 5)!;
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_opt_box_autoadd_node_network_view,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSimpleGetNodeNetworkViewConstMeta,
      argValues: [nodeNetworkName],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSimpleGetNodeNetworkViewConstMeta =>
      const TaskConstMeta(
        debugName: "get_node_network_view",
        argNames: ["nodeNetworkName"],
      );

  @override
  String crateApiSimpleGreet({required String name}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(name, serializer);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 6)!;
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_String,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSimpleGreetConstMeta,
      argValues: [name],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSimpleGreetConstMeta => const TaskConstMeta(
        debugName: "greet",
        argNames: ["name"],
      );

  @override
  Future<void> crateApiSimpleInitApp() {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 7, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSimpleInitAppConstMeta,
      argValues: [],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSimpleInitAppConstMeta => const TaskConstMeta(
        debugName: "init_app",
        argNames: [],
      );

  @override
  void crateApiSimpleMoveCamera(
      {required APIVec3 eye, required APIVec3 target, required APIVec3 up}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_box_autoadd_api_vec_3(eye, serializer);
        sse_encode_box_autoadd_api_vec_3(target, serializer);
        sse_encode_box_autoadd_api_vec_3(up, serializer);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 8)!;
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSimpleMoveCameraConstMeta,
      argValues: [eye, target, up],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSimpleMoveCameraConstMeta => const TaskConstMeta(
        debugName: "move_camera",
        argNames: ["eye", "target", "up"],
      );

  @override
  void crateApiSimpleMoveNode(
      {required String nodeNetworkName,
      required BigInt nodeId,
      required APIVec2 position}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(nodeNetworkName, serializer);
        sse_encode_u_64(nodeId, serializer);
        sse_encode_box_autoadd_api_vec_2(position, serializer);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 9)!;
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSimpleMoveNodeConstMeta,
      argValues: [nodeNetworkName, nodeId, position],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSimpleMoveNodeConstMeta => const TaskConstMeta(
        debugName: "move_node",
        argNames: ["nodeNetworkName", "nodeId", "position"],
      );

  @override
  double crateApiSimpleProvideTexture({required int texturePtr}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_CastedPrimitive_u_64(texturePtr, serializer);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 10)!;
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_f_64,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSimpleProvideTextureConstMeta,
      argValues: [texturePtr],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSimpleProvideTextureConstMeta =>
      const TaskConstMeta(
        debugName: "provide_texture",
        argNames: ["texturePtr"],
      );

  @protected
  int dco_decode_CastedPrimitive_u_64(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    throw UnimplementedError(
        'Not implemented in this codec, please use the other one');
  }

  @protected
  Map<BigInt, NodeView> dco_decode_Map_u_64_node_view(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return Map.fromEntries(dco_decode_list_record_u_64_node_view(raw)
        .map((e) => MapEntry(e.$1, e.$2)));
  }

  @protected
  String dco_decode_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as String;
  }

  @protected
  APICamera dco_decode_api_camera(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 7)
      throw Exception('unexpected arr length: expect 7 but see ${arr.length}');
    return APICamera(
      eye: dco_decode_api_vec_3(arr[0]),
      target: dco_decode_api_vec_3(arr[1]),
      up: dco_decode_api_vec_3(arr[2]),
      aspect: dco_decode_f_32(arr[3]),
      fovy: dco_decode_f_32(arr[4]),
      znear: dco_decode_f_32(arr[5]),
      zfar: dco_decode_f_32(arr[6]),
    );
  }

  @protected
  APIVec2 dco_decode_api_vec_2(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return APIVec2(
      x: dco_decode_f_32(arr[0]),
      y: dco_decode_f_32(arr[1]),
    );
  }

  @protected
  APIVec3 dco_decode_api_vec_3(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 3)
      throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return APIVec3(
      x: dco_decode_f_32(arr[0]),
      y: dco_decode_f_32(arr[1]),
      z: dco_decode_f_32(arr[2]),
    );
  }

  @protected
  APICamera dco_decode_box_autoadd_api_camera(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dco_decode_api_camera(raw);
  }

  @protected
  APIVec2 dco_decode_box_autoadd_api_vec_2(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dco_decode_api_vec_2(raw);
  }

  @protected
  APIVec3 dco_decode_box_autoadd_api_vec_3(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dco_decode_api_vec_3(raw);
  }

  @protected
  NodeNetworkView dco_decode_box_autoadd_node_network_view(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dco_decode_node_network_view(raw);
  }

  @protected
  double dco_decode_f_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as double;
  }

  @protected
  double dco_decode_f_64(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as double;
  }

  @protected
  int dco_decode_i_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  InputPinView dco_decode_input_pin_view(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return InputPinView(
      name: dco_decode_String(arr[0]),
    );
  }

  @protected
  List<InputPinView> dco_decode_list_input_pin_view(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_input_pin_view).toList();
  }

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as Uint8List;
  }

  @protected
  List<(BigInt, NodeView)> dco_decode_list_record_u_64_node_view(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>)
        .map(dco_decode_record_u_64_node_view)
        .toList();
  }

  @protected
  List<WireView> dco_decode_list_wire_view(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_wire_view).toList();
  }

  @protected
  NodeNetworkView dco_decode_node_network_view(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 3)
      throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return NodeNetworkView(
      name: dco_decode_String(arr[0]),
      nodes: dco_decode_Map_u_64_node_view(arr[1]),
      wires: dco_decode_list_wire_view(arr[2]),
    );
  }

  @protected
  NodeView dco_decode_node_view(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 4)
      throw Exception('unexpected arr length: expect 4 but see ${arr.length}');
    return NodeView(
      id: dco_decode_u_64(arr[0]),
      nodeTypeName: dco_decode_String(arr[1]),
      position: dco_decode_api_vec_2(arr[2]),
      inputPins: dco_decode_list_input_pin_view(arr[3]),
    );
  }

  @protected
  APICamera? dco_decode_opt_box_autoadd_api_camera(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_box_autoadd_api_camera(raw);
  }

  @protected
  NodeNetworkView? dco_decode_opt_box_autoadd_node_network_view(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_box_autoadd_node_network_view(raw);
  }

  @protected
  (BigInt, NodeView) dco_decode_record_u_64_node_view(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 2) {
      throw Exception('Expected 2 elements, got ${arr.length}');
    }
    return (
      dco_decode_u_64(arr[0]),
      dco_decode_node_view(arr[1]),
    );
  }

  @protected
  BigInt dco_decode_u_64(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dcoDecodeU64(raw);
  }

  @protected
  int dco_decode_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  void dco_decode_unit(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return;
  }

  @protected
  BigInt dco_decode_usize(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dcoDecodeU64(raw);
  }

  @protected
  WireView dco_decode_wire_view(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 3)
      throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return WireView(
      sourceNodeId: dco_decode_u_64(arr[0]),
      destNodeId: dco_decode_u_64(arr[1]),
      destParamIndex: dco_decode_usize(arr[2]),
    );
  }

  @protected
  int sse_decode_CastedPrimitive_u_64(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_u_64(deserializer);
    return inner.toInt();
  }

  @protected
  Map<BigInt, NodeView> sse_decode_Map_u_64_node_view(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_record_u_64_node_view(deserializer);
    return Map.fromEntries(inner.map((e) => MapEntry(e.$1, e.$2)));
  }

  @protected
  String sse_decode_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_prim_u_8_strict(deserializer);
    return utf8.decoder.convert(inner);
  }

  @protected
  APICamera sse_decode_api_camera(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_eye = sse_decode_api_vec_3(deserializer);
    var var_target = sse_decode_api_vec_3(deserializer);
    var var_up = sse_decode_api_vec_3(deserializer);
    var var_aspect = sse_decode_f_32(deserializer);
    var var_fovy = sse_decode_f_32(deserializer);
    var var_znear = sse_decode_f_32(deserializer);
    var var_zfar = sse_decode_f_32(deserializer);
    return APICamera(
        eye: var_eye,
        target: var_target,
        up: var_up,
        aspect: var_aspect,
        fovy: var_fovy,
        znear: var_znear,
        zfar: var_zfar);
  }

  @protected
  APIVec2 sse_decode_api_vec_2(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_x = sse_decode_f_32(deserializer);
    var var_y = sse_decode_f_32(deserializer);
    return APIVec2(x: var_x, y: var_y);
  }

  @protected
  APIVec3 sse_decode_api_vec_3(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_x = sse_decode_f_32(deserializer);
    var var_y = sse_decode_f_32(deserializer);
    var var_z = sse_decode_f_32(deserializer);
    return APIVec3(x: var_x, y: var_y, z: var_z);
  }

  @protected
  APICamera sse_decode_box_autoadd_api_camera(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return (sse_decode_api_camera(deserializer));
  }

  @protected
  APIVec2 sse_decode_box_autoadd_api_vec_2(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return (sse_decode_api_vec_2(deserializer));
  }

  @protected
  APIVec3 sse_decode_box_autoadd_api_vec_3(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return (sse_decode_api_vec_3(deserializer));
  }

  @protected
  NodeNetworkView sse_decode_box_autoadd_node_network_view(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return (sse_decode_node_network_view(deserializer));
  }

  @protected
  double sse_decode_f_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getFloat32();
  }

  @protected
  double sse_decode_f_64(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getFloat64();
  }

  @protected
  int sse_decode_i_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getInt32();
  }

  @protected
  InputPinView sse_decode_input_pin_view(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_name = sse_decode_String(deserializer);
    return InputPinView(name: var_name);
  }

  @protected
  List<InputPinView> sse_decode_list_input_pin_view(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <InputPinView>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_input_pin_view(deserializer));
    }
    return ans_;
  }

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint8List(len_);
  }

  @protected
  List<(BigInt, NodeView)> sse_decode_list_record_u_64_node_view(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <(BigInt, NodeView)>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_record_u_64_node_view(deserializer));
    }
    return ans_;
  }

  @protected
  List<WireView> sse_decode_list_wire_view(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <WireView>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_wire_view(deserializer));
    }
    return ans_;
  }

  @protected
  NodeNetworkView sse_decode_node_network_view(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_name = sse_decode_String(deserializer);
    var var_nodes = sse_decode_Map_u_64_node_view(deserializer);
    var var_wires = sse_decode_list_wire_view(deserializer);
    return NodeNetworkView(name: var_name, nodes: var_nodes, wires: var_wires);
  }

  @protected
  NodeView sse_decode_node_view(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_id = sse_decode_u_64(deserializer);
    var var_nodeTypeName = sse_decode_String(deserializer);
    var var_position = sse_decode_api_vec_2(deserializer);
    var var_inputPins = sse_decode_list_input_pin_view(deserializer);
    return NodeView(
        id: var_id,
        nodeTypeName: var_nodeTypeName,
        position: var_position,
        inputPins: var_inputPins);
  }

  @protected
  APICamera? sse_decode_opt_box_autoadd_api_camera(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_box_autoadd_api_camera(deserializer));
    } else {
      return null;
    }
  }

  @protected
  NodeNetworkView? sse_decode_opt_box_autoadd_node_network_view(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_box_autoadd_node_network_view(deserializer));
    } else {
      return null;
    }
  }

  @protected
  (BigInt, NodeView) sse_decode_record_u_64_node_view(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_field0 = sse_decode_u_64(deserializer);
    var var_field1 = sse_decode_node_view(deserializer);
    return (var_field0, var_field1);
  }

  @protected
  BigInt sse_decode_u_64(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getBigUint64();
  }

  @protected
  int sse_decode_u_8(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8();
  }

  @protected
  void sse_decode_unit(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  BigInt sse_decode_usize(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getBigUint64();
  }

  @protected
  WireView sse_decode_wire_view(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_sourceNodeId = sse_decode_u_64(deserializer);
    var var_destNodeId = sse_decode_u_64(deserializer);
    var var_destParamIndex = sse_decode_usize(deserializer);
    return WireView(
        sourceNodeId: var_sourceNodeId,
        destNodeId: var_destNodeId,
        destParamIndex: var_destParamIndex);
  }

  @protected
  bool sse_decode_bool(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8() != 0;
  }

  @protected
  void sse_encode_CastedPrimitive_u_64(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_u_64(sseEncodeCastedPrimitiveU64(self), serializer);
  }

  @protected
  void sse_encode_Map_u_64_node_view(
      Map<BigInt, NodeView> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_record_u_64_node_view(
        self.entries.map((e) => (e.key, e.value)).toList(), serializer);
  }

  @protected
  void sse_encode_String(String self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_prim_u_8_strict(utf8.encoder.convert(self), serializer);
  }

  @protected
  void sse_encode_api_camera(APICamera self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_api_vec_3(self.eye, serializer);
    sse_encode_api_vec_3(self.target, serializer);
    sse_encode_api_vec_3(self.up, serializer);
    sse_encode_f_32(self.aspect, serializer);
    sse_encode_f_32(self.fovy, serializer);
    sse_encode_f_32(self.znear, serializer);
    sse_encode_f_32(self.zfar, serializer);
  }

  @protected
  void sse_encode_api_vec_2(APIVec2 self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_f_32(self.x, serializer);
    sse_encode_f_32(self.y, serializer);
  }

  @protected
  void sse_encode_api_vec_3(APIVec3 self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_f_32(self.x, serializer);
    sse_encode_f_32(self.y, serializer);
    sse_encode_f_32(self.z, serializer);
  }

  @protected
  void sse_encode_box_autoadd_api_camera(
      APICamera self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_api_camera(self, serializer);
  }

  @protected
  void sse_encode_box_autoadd_api_vec_2(
      APIVec2 self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_api_vec_2(self, serializer);
  }

  @protected
  void sse_encode_box_autoadd_api_vec_3(
      APIVec3 self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_api_vec_3(self, serializer);
  }

  @protected
  void sse_encode_box_autoadd_node_network_view(
      NodeNetworkView self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_node_network_view(self, serializer);
  }

  @protected
  void sse_encode_f_32(double self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putFloat32(self);
  }

  @protected
  void sse_encode_f_64(double self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putFloat64(self);
  }

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putInt32(self);
  }

  @protected
  void sse_encode_input_pin_view(InputPinView self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(self.name, serializer);
  }

  @protected
  void sse_encode_list_input_pin_view(
      List<InputPinView> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_input_pin_view(item, serializer);
    }
  }

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint8List(self);
  }

  @protected
  void sse_encode_list_record_u_64_node_view(
      List<(BigInt, NodeView)> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_record_u_64_node_view(item, serializer);
    }
  }

  @protected
  void sse_encode_list_wire_view(
      List<WireView> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_wire_view(item, serializer);
    }
  }

  @protected
  void sse_encode_node_network_view(
      NodeNetworkView self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(self.name, serializer);
    sse_encode_Map_u_64_node_view(self.nodes, serializer);
    sse_encode_list_wire_view(self.wires, serializer);
  }

  @protected
  void sse_encode_node_view(NodeView self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_u_64(self.id, serializer);
    sse_encode_String(self.nodeTypeName, serializer);
    sse_encode_api_vec_2(self.position, serializer);
    sse_encode_list_input_pin_view(self.inputPins, serializer);
  }

  @protected
  void sse_encode_opt_box_autoadd_api_camera(
      APICamera? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_box_autoadd_api_camera(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_box_autoadd_node_network_view(
      NodeNetworkView? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_box_autoadd_node_network_view(self, serializer);
    }
  }

  @protected
  void sse_encode_record_u_64_node_view(
      (BigInt, NodeView) self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_u_64(self.$1, serializer);
    sse_encode_node_view(self.$2, serializer);
  }

  @protected
  void sse_encode_u_64(BigInt self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putBigUint64(self);
  }

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self);
  }

  @protected
  void sse_encode_unit(void self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  void sse_encode_usize(BigInt self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putBigUint64(self);
  }

  @protected
  void sse_encode_wire_view(WireView self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_u_64(self.sourceNodeId, serializer);
    sse_encode_u_64(self.destNodeId, serializer);
    sse_encode_usize(self.destParamIndex, serializer);
  }

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self ? 1 : 0);
  }
}
