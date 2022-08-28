import 'package:flutter/material.dart';

class CatPhoto extends StatelessWidget {
  const CatPhoto({
    Key? key,
    required String imageUrl,
    required int imageVersion,
  }) : _imageUrl = imageUrl, _imageVersion = imageVersion, super(key: key);

  final String _imageUrl;
  final int _imageVersion;

  @override
  Widget build(BuildContext context) {
    return Image.network('$_imageUrl?v=$_imageVersion');
  }
}