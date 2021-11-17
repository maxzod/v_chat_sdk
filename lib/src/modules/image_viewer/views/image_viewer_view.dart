import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewerView extends StatelessWidget {
  final String url;

  const ImageViewerView(this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isRtl = Directionality.of(context) == TextDirection.rtl;
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          PhotoView(
            imageProvider: NetworkImage(url),
          ),
          isRtl
              ? Positioned(
                  // TODO :: fixed numbers
                  top: 20,
                  right: 10,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 30,
                    ),
                  ))
              : Positioned(
                  top: 20,
                  left: 10,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 30,
                    ),
                  )),
        ],
      ),
    );
  }
}
