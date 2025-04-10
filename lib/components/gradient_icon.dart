import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final double? size;

  const GradientIcon({super.key, required this.icon, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: ShaderMask(
        shaderCallback: (bounds) {
          return LinearGradient(
            colors: [Colors.blue, Colors.purple],
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: Icon(
          size: size,
          icon,
          color: Colors.white, // This color is not used as gradient is applied
        ),
      ),
    );
  }
}
