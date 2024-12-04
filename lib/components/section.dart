
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zemni_prace/components/text/paragraph.dart';
import 'package:zemni_prace/components/text/section_title.dart';
import 'package:zemni_prace/main.dart';

class Section extends StatelessWidget {
  final Widget child;
  final String? title;
  final String? description;
  final Color? background;
  final bool? margin;

  const Section({super.key, required this.child, this.title,  this.background, this.description,  this.margin});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Container(
      width: double.infinity,
      color: background ?? Colors.transparent,
      child: Column(
        children: [
          Container(
            width: (margin ?? true) ? width * 0.8 : double.infinity,
            margin: (margin ?? true) ?  EdgeInsets.only( top: isSmall? 32: 64,bottom: isSmall ?64 :96) : const EdgeInsets.all(0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center  ,
              children: [
                if (title != null)
                  Container(
                    margin: EdgeInsets.only(left: 0 ),
                    child: SectionTitle(
                      text: title!,
                    ),
                  ),
                if(title != null)
                  SizedBox(height: isSmall? 32:64,),
                if(description != null)
                  Container(width: isSmall ? (width * 0.75) : (width * 0.5), child: Paragraph(text: description!,fontSize: 18,),),
                if(description != null)
                  SizedBox(height: 24,),
                child,

              ],
            ),
          ),
        ],
      ),
    );
  }
}
