import 'package:flutter/material.dart';
import 'package:flutter_cad/src/rust/api/api_types.dart';
import 'package:flutter_cad/src/rust/api/simple.dart';
import 'package:flutter_cad/inputs/ivec3_input.dart';

/// Editor widget for cuboid nodes
class CuboidEditor extends StatefulWidget {
  final String nodeNetworkName;
  final BigInt nodeId;
  final APICuboidData? data;

  const CuboidEditor({
    super.key,
    required this.nodeNetworkName,
    required this.nodeId,
    required this.data,
  });

  @override
  State<CuboidEditor> createState() => CuboidEditorState();
}

class CuboidEditorState extends State<CuboidEditor> {
  APICuboidData? _stagedData;

  @override
  void initState() {
    super.initState();
    setState(() {
      _stagedData = widget.data;
    });
  }

  @override
  void didUpdateWidget(CuboidEditor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.data != widget.data) {
      setState(() {
        _stagedData = widget.data;
      });
    }
  }

  void _updateStagedData(APICuboidData newData) {
    setState(() => _stagedData = newData);
  }

  void _applyChanges() {
    if (_stagedData != null) {
      setCuboidData(
        nodeNetworkName: widget.nodeNetworkName,
        nodeId: widget.nodeId,
        data: _stagedData!,
      );
      // No need to update _data here as it will be updated in the parent widget
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_stagedData == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cuboid Properties',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            IVec3Input(
              label: 'Min Corner',
              value: _stagedData!.minCorner,
              onChanged: (newValue) {
                _updateStagedData(APICuboidData(
                  minCorner: newValue,
                  extent: _stagedData!.extent,
                ));
              },
            ),
            const SizedBox(height: 8),
            IVec3Input(
              label: 'Extent',
              value: _stagedData!.extent,
              onChanged: (newValue) {
                _updateStagedData(APICuboidData(
                  minCorner: _stagedData!.minCorner,
                  extent: newValue,
                ));
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: _stagedData != widget.data
                      ? () {
                          setState(() => _stagedData = widget.data);
                        }
                      : null,
                  child: const Text('Reset'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _stagedData != widget.data ? _applyChanges : null,
                  child: const Text('Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
