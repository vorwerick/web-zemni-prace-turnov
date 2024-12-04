import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zemni_prace/components/web_image.dart';
import 'package:zemni_prace/data/photos/photo_library.dart';
import 'package:zemni_prace/main.dart';

class GalleryDialog extends StatefulWidget {
  final PhotoLibrary photoLibrary;

  const GalleryDialog({
    super.key,
    required this.photoLibrary,
  });

  @override
  State<GalleryDialog> createState() => _GalleryDialogState();
}

class _GalleryDialogState extends State<GalleryDialog> {
  int index = 0;

  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isSmall = App.isTablet(context) || App.isMobile(context);
    Future.microtask(() => _focusNode.requestFocus());
    return KeyboardListener(
      focusNode: _focusNode,
      onKeyEvent: (KeyEvent e) {
        if (e.physicalKey == PhysicalKeyboardKey.escape) {
          Navigator.of(context, rootNavigator: true).pop();
          _focusNode.unfocus();
          return;
        }
        if (e.physicalKey == PhysicalKeyboardKey.arrowLeft && index > 0) {
          _focusNode.unfocus();
          setState(() {
            index--;
          });
          return;
        }
        if (e.physicalKey == PhysicalKeyboardKey.arrowRight &&
            index < widget.photoLibrary.count - 1) {
          _focusNode.unfocus();
          setState(() {
            index++;
          });
          return;
        }
      },
      child: Dialog(
        backgroundColor: Colors.black,
        child: Stack(
          alignment: Alignment.center,
          children: [
            WebImage(
            description: widget.photoLibrary.description,
              imageUrl: widget.photoLibrary.getPath(index),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: IconButton.filledTonal(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ),
            Align(
              alignment:
              isSmall ? Alignment.bottomCenter : Alignment.center,
              child: Row(
                mainAxisAlignment: isSmall? MainAxisAlignment.center:MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: IconButton.filledTonal(
                        color: Colors.white,
                        onPressed: index > 0
                            ? () {
                                setState(() {
                                  index--;
                                });
                              }
                            : null,
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: IconButton.filledTonal(
                        color: Colors.white,
                        onPressed: index < widget.photoLibrary.count - 1
                            ? () {
                                setState(() {
                                  index++;
                                });
                              }
                            : null,
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
