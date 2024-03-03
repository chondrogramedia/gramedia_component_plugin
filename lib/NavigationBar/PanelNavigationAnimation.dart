import 'package:flutter/material.dart';

class PanelNavigationAnimation<T> extends StatefulWidget {
  const PanelNavigationAnimation(
      {super.key,
      required this.offset,
      required this.width,
      required this.height,
      required this.hasTouch,
      required this.duration,
      required this.curve,
      this.decoration});

  final double offset;
  final double? width;
  final double? height;
  final Duration duration;
  final Curve curve;
  final bool hasTouch;
  final BoxDecoration? decoration;

  @override
  State<PanelNavigationAnimation<T>> createState() =>
      _PanelNavigationAnimationState<T>();
}

class _PanelNavigationAnimationState<T>
    extends State<PanelNavigationAnimation<T>> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    final _offset = isRtl ? widget.offset * -1 : widget.offset;
    return AnimatedContainer(
      transform: Matrix4.translationValues(_offset, 0, 0),
      duration: widget.duration,
      curve: widget.curve,
      width: widget.width,
      height: widget.height,
      decoration: widget.decoration,
    );
  }
}
