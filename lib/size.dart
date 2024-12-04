import 'package:flutter/material.dart';

enum Size {
  SMALL, MEDIUM, LARGE, XXL
}

isSmall(BuildContext context){
  return  MediaQuery.of(context).size.height < 450;
}