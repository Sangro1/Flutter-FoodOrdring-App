import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText  extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  //constructor
  SmallText ({Key? key, this.color = const Color(0xffccc7c5),
    required this.text,
    this.size = 15,
    this.height = 1.2,// space b/w lines in paragraphs
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        maxLines: 1,
         style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size,
          height: height    ,
          fontWeight: FontWeight.w700,
        )

    );
  }
}
