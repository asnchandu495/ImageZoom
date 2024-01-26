import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
// import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _scale = 1.0;
  late Alignment? basePositionLocal = Alignment.center;

  late PhotoViewScaleStateController scaleStateController;

  AlignmentDirectional _ironManAlignment = AlignmentDirectional(0.0, 0.0);
  // double _ironManAlignment = 50;

  // final imageProvider = Image.network("https://picsum.photos/500?image=9").image;

  @override
  void initState() {
    super.initState();
    scaleStateController = PhotoViewScaleStateController();
  }

  @override
  void dispose() {
    scaleStateController.dispose();
    super.dispose();
  }

  void goBack(){
    scaleStateController.scaleState = PhotoViewScaleState.originalSize;
  }
  // AlignmentGeometry basePositionLocal = Alignment.center;

  void _resetScale() {
    setState(() {
      basePositionLocal = Alignment.center;
      _scale = 1.0;
      // basePositionLocal = Alignment.center;
    });
  }

  void _incrementScale() {
    setState(() {
      // _scale += 0.1;
      _scale = 1.8;
      basePositionLocal = const Alignment(0.6, -0.4);
      _ironManAlignment = AlignmentDirectional(0.6, -0.4);
      // basePositionLocal = Alignment.topRight;
    });
  }

  void _decrementScale() {
    setState(() {
      // _scale -= 0.1;
      _scale = 2.5;
      basePositionLocal = const Alignment(0.8, 0.4);
      _ironManAlignment = AlignmentDirectional(0.8, 0.4);
      // basePositionLocal = Alignment.bottomLeft;
    });
  }
  void _glassScale() {
    setState(() {
      _scale = 3.0;
      basePositionLocal = const Alignment(0.0, 0.0);
      _ironManAlignment = AlignmentDirectional(0.0, 0.0);
      // basePositionLocal = Alignment.topLeft;
    });
  }
  final transformationController = TransformationController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight =  MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text('flutterassets.com'),
        ),
        body: Container(
            width: screenWidth,
            height: screenHeight,
            color: Colors.green,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // AnimatedOpacity(
                //   // If the widget is visible, animate to 0.0 (invisible).
                //   // If the widget is hidden, animate to 1.0 (fully visible).
                //   opacity: 1.0,
                //   duration: const Duration(milliseconds: 2000),
                //   // The green box must be a child of the AnimatedOpacity widget.
                //   child: ,
                // ),
                Container(
                  width: screenWidth,
                  height: 300,
                  color: Colors.red,
                  child:
                  // ClipRect(
                  //     child: ExtendedImage.network(
                  //   'https://picsum.photos/500?image=9',
                  //   // fit: BoxFit.contain,
                  //   //enableLoadState: false,
                  //     width: screenWidth,
                  //     height: 300,
                  //     fit: BoxFit.fill,
                  //   // alignment: basePositionLocal,
                  //   // scale: _scale,
                  //   mode: ExtendedImageMode.gesture,
                  //   initGestureConfigHandler: (state) {
                  //     return GestureConfig(
                  //       minScale: 0.9,
                  //       animationMinScale: 0.7,
                  //       maxScale: 3.0,
                  //       animationMaxScale: 3.5,
                  //       speed: 0.5,
                  //       inertialSpeed: 100.0,
                  //       initialScale: _scale,
                  //       inPageView: true,
                  //         initialAlignment:InitialAlignment.topRight,
                  //       gestureDetailsIsChanged:  (GestureDetails? details){
                  //         print(details?.offset);
                  //         // details?.offset = const Offset(0.0, -50.6);
                  //         // GestureDetails(
                  //         //   offset:const Offset(0.0, -50.6),
                  //         // );
                  //       }
                  //
                  //       // initialAlignment: InitialAlignment.center,
                  //         // initialAlignment: basePositionLocal
                  //     );
                  //   },
                  // ),
                  // )

                  // ExtendedImage.network(
                  //   'https://picsum.photos/500?image=9',
                  //   width: screenWidth,
                  //   height: 300,
                  //   fit: BoxFit.fill,
                  //   cache: true,
                  //   scale: _scale,
                  //   alignment: basePositionLocal,
                  //
                  //
                  //   // border: Border.all(color: Colors.red, width: 1.0),
                  //   // shape: boxShape,
                  //   // borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  //   //cancelToken: cancellationToken,
                  // )

                  // ClipRect(
                  //   child:
                  //
                  //   PhotoView(
                  //     // customSize:const Size(200, 200),
                  //     // initialScale: PhotoViewComputedScale.covered,
                  //     enablePanAlways:true,
                  //     gaplessPlayback: true,
                  //     filterQuality:FilterQuality.high,
                  //     tightMode: false,
                  //     initialScale: _scale,
                  //     minScale: 0.5,
                  //     maxScale: 3.0,
                  //     basePosition: basePositionLocal,
                  //     imageProvider: const AssetImage('assets/world.jpeg'),
                  //     // Image.asset('assets/map.png'),
                  //     // NetworkImage('https://picsum.photos/500?image=9'),
                  //     // AssetImage("assets/map.png"),
                  //     backgroundDecoration: BoxDecoration(
                  //       color: Theme.of(context).canvasColor,
                  //     ),
                  //     scaleStateController: scaleStateController,
                  //     // ),
                  //   ),
                  // ),

                  AnimatedContainer(
                    duration: Duration(seconds: 3),
                    alignment: _ironManAlignment,
                    child:
                    ClipRect(
                      child:

                      PhotoView(
                        // customSize:const Size(200, 200),
                        // initialScale: PhotoViewComputedScale.covered,
                        enablePanAlways:true,
                        gaplessPlayback: true,
                        filterQuality:FilterQuality.low,
                        tightMode: false,
                        initialScale: _scale,
                        minScale: 0.5,
                        maxScale: 3.0,
                        basePosition: basePositionLocal,
                        imageProvider: const AssetImage('assets/world.jpeg'),
                        // Image.asset('assets/map.png'),
                        // NetworkImage('https://picsum.photos/500?image=9'),
                        // AssetImage("assets/map.png"),
                        backgroundDecoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                        ),
                        scaleStateController: scaleStateController,
                        // ),
                      ),
                    ),
                  ),

                  // AnimatedPositioned(
                  //   duration: Duration(seconds: 3),
                  //   bottom: _ironManAlignment,
                  //   left: 90,
                  //   child: Container(
                  //     height: 250,
                  //     width: 150,
                  //     child: Image.asset('assets/world.jpeg'),
                  //   ),
                  // ),

                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      child: Text('India'),
                      onPressed: _incrementScale,
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      child: Text('Reset'),
                      onPressed: _resetScale,
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      child: Text('Australia'),
                      onPressed: _decrementScale,
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      child: Text('Glass'),
                      onPressed: _glassScale,
                    ),
                  ],
                ),
              ],
            )
        )
    );
  }
}