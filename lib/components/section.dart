import 'package:appwizards_web/components/text/paragraph.dart';
import 'package:appwizards_web/components/text/section_title.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final double height;
  final Widget child;
  final String? title;
  final String? description;
  final Color? background;
  final bool? margin;
  final String sectionId;
  final bool? justifyText;

  const Section(
      {super.key,
      required this.child,
      this.title,
      this.background,
      this.description,
      this.margin,
      this.justifyText,
      required this.height,
      required this.sectionId});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Container(
      height: height,
      width: width,
      color: background ?? Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: (margin ?? true) ? width * 0.8 : double.infinity,
            margin: (margin ?? true)
                ? EdgeInsets.only(
                    top: isSmall ? 32 : 64, bottom: isSmall ? 64 : 96)
                : const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (title != null)
                  Container(
                    margin: EdgeInsets.only(left: 0),
                    child: SectionTitle(
                      text: title!,
                    ),
                  ),
                if (title != null)
                  SizedBox(
                    height: isSmall ? 32 : 64,
                  ),
                if (description != null)
                  Container(
                    width: isSmall ? (width * 0.75) : (width * 0.618),
                    child: Paragraph(
                      text: description!,
                      fontSize: 18,
                      textAlign: (justifyText ?? true) ? TextAlign.justify : TextAlign.center ,
                    ),
                  ),
                if (description != null)
                  SizedBox(
                    height: 24,
                  ),
                FutureBuilder(
                    future: Future.value(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return child;
                      }
                      return SizedBox.shrink();
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
