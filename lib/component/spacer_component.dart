import 'package:flutter/material.dart';

class spacer_component extends StatelessWidget {
  final double? width;
  final double? height;

  const spacer_component({
    this.height,
    this.width,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
