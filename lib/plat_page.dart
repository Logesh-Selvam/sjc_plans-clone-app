import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class PaltPage extends StatefulWidget {
  PaltPage({Key? key}) : super(key: key);

  @override
  _CardOneImageState createState() => _CardOneImageState();
}

class _CardOneImageState extends State<PaltPage> {
  List<String> imagePaths = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/12.jpg',
    'images/13.jpg',
    'images/14.jpg',
    'images/15.jpg',
    'images/4.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: imagePaths.length,
                  controller: PageController(initialPage: currentIndex),
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final assetImagePath = imagePaths[index];
                    final assetImage = AssetImage(assetImagePath);
                    return Center(
                      child: GestureDetector(
                        onLongPress: () async {
                          try {
                            // Load the asset image as bytes
                            final ByteData byteData =
                                await rootBundle.load(assetImagePath);
                            final List<int> bytes =
                                byteData.buffer.asUint8List();
                            // Create a temporary file to share
                            final tempDir = await getTemporaryDirectory();
                            final tempFile = File('${tempDir.path}/image.jpg');
                            await tempFile.writeAsBytes(bytes);
                            // Share the temporary file
                            await Share.shareFiles(
                              [tempFile.path],
                            );
                          } catch (e) {
                            print('Error sharing file: $e');
                          }
                        },
                        child: Image(image: assetImage),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == currentIndex
                            ? const Color.fromARGB(255, 255, 0, 0)
                            : const Color.fromARGB(255, 135, 169, 225),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
