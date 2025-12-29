import 'package:flutter/material.dart';


class ARScreen extends StatefulWidget {
  @override
  _ARScreenState createState() => 
_ARScreenState();
}
class _ARScreenState extends State<ARScreen> {
  ArCoreController? arCoreController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AR Example')),
      body: ArCoreView(
        onArCoreViewCreated: 
_onArCoreViewCreated,
      ),
    );
  }

   void _onArCoreViewCreated(ArCoreController 
controller) {
    arCoreController = controller;
    arCoreController!.addArCoreNode(
      ArCoreReferenceNode(
        name: 'earth',
        objectUrl: 
'https://github.com/KhronosGroup/glTF-Sample-Models
/raw/master/2.0/Earth/glTF/Earth.gltf',
        position: ArCoreVector(0, 0, -1),
      ),
    );
  }
  @override
  void dispose() {
    arCoreController?.dispose();
    super.dispose();
  }
