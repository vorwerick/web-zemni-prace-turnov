import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zemni_prace/components/web_image.dart';
import 'package:zemni_prace/data/photos/photo_library.dart';
import 'package:zemni_prace/dialogs/galery_dialog.dart';
import 'package:zemni_prace/main.dart';

class ReferenceCard extends StatefulWidget {
  final PhotoLibrary photoLibrary;
  final String description;

  const ReferenceCard(
      {super.key, required this.description, required this.photoLibrary});

  @override
  State<ReferenceCard> createState() => _ReferenceCardState();
}

class _ReferenceCardState extends State<ReferenceCard> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    final bool smallerThanTablet = MediaQuery.of(context).size.height < 800;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return GalleryDialog(
                photoLibrary: widget.photoLibrary,
              );
            });
      },
      onHover: (b) {
        log(b.toString());
        setState(() {
          onHover = b;
        });
      },
      child: Transform.scale(
        scale: onHover ? 1.05 : 1,
        child: Stack(
          children: [
            Container(
              width: isSmall? 150:300,
              height: isSmall? 100:200,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: isSmall ? SizedBox() :WebImage(
                  description: widget.photoLibrary.description,
                cover: true,
                  imageUrl: widget.photoLibrary
                      .getPath(widget.photoLibrary.count - 1)),
            ),
            Container(
                width: isSmall? 150:300,
                height: isSmall? 100:200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: App.primaryDark
                      .withOpacity(onHover || smallerThanTablet ? 0.86 : 0.1),
                ),
                child: onHover || smallerThanTablet
                    ? Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.all(isSmall ? 4:24),
                                    child: Text(
                                      widget.description,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.montserrat(
                                          fontSize: isSmall? 10: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: isSmall ? 16:28,
                              ),
                            )
                          ],
                        ),
                      )
                    : SizedBox.shrink()),
          ],
        ),
      ),
    );
  }
}
