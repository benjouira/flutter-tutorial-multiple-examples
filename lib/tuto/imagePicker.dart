import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:images_picker/images_picker.dart';

class ImagePickerClass extends StatefulWidget {
  const ImagePickerClass({Key? key}) : super(key: key);

  @override
  _ImagePickerClassState createState() => _ImagePickerClassState();
}

class _ImagePickerClassState extends State<ImagePickerClass> {
  String? path;

  Future<File> downloadFile(String url) async {
    Dio simple = Dio();
    String savePath = Directory.systemTemp.path + '/' + url.split('/').last;
    await simple.download(url, savePath,
        options: Options(responseType: ResponseType.bytes));
    print(savePath);
    File file = new File(savePath);
    return file;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: Text('pick'),
            onPressed: () async {
              List<Media>? res = await ImagesPicker.pick(
                count: 3,
                pickType: PickType.all,
                language: Language.System,
                // maxSize: 500,
                cropOpt: CropOption(
                  aspectRatio: CropAspectRatio.wh16x9,
                ),
              );
              if (res != null) {
                print(res.map((e) => e.path).toList());
                setState(() {
                  path = res[0].thumbPath;
                });
                // bool status = await ImagesPicker.saveImageToAlbum(File(res[0]?.path));
                // print(status);
              }
            },
          ),
          ElevatedButton(
            child: Text('openCamera'),
            onPressed: () async {
              List<Media>? res = await ImagesPicker.openCamera(
                pickType: PickType.video,
                // quality: 0.5,
                // cropOpt: CropOption(
                //   aspectRatio: CropAspectRatio.wh16x9,
                // ),
                maxTime: 15,
              );
              if (res != null) {
                print(res[0].path);
                setState(() {
                  path = res[0].thumbPath;
                });
              }
            },
          ),
          ElevatedButton(
            onPressed: () async {
              File file =
                  await downloadFile('https://cdn.chavesgu.com/logo.png');
              bool res = await ImagesPicker.saveImageToAlbum(file,
                  albumName: "chaves");
              print(res);
            },
            child: Text('saveNetworkImageToAlbum'),
          ),
          ElevatedButton(
            onPressed: () async {
              File file = await downloadFile(
                  'https://cdn.chavesgu.com/SampleVideo.mp4');
              bool res = await ImagesPicker.saveVideoToAlbum(file,
                  albumName: "chaves");
              print(res);
            },
            child: Text('saveNetworkVideoToAlbum'),
          ),
          path != null
              ? Container(
                  height: 200,
                  child: Image.file(
                    File(path!),
                    fit: BoxFit.contain,
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}