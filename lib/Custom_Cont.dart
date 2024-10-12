import 'package:flutter/material.dart';

class Custom_Float_Container extends StatefulWidget {
  final Duration positioned_dur;
  final Curve positioned_curve;
  final Curve opacity_curve;
  final double positioned_height;
  final double positioned_top;
  final double positioned_right;
  final double positioned_width;
  final double opacity_level;
  final Duration opacity_dur;
  final double Cont_height;
  final double Cont_width;
  final List<Color> Cont_color;
  final Widget Cont_child;

  Custom_Float_Container({
    super.key,
    required this.positioned_dur,
    required this.Cont_child,
    required this.positioned_curve,
    required this.positioned_height,
    required this.positioned_top,
    required this.positioned_right,
    required this.positioned_width,
    required this.opacity_level,
    required this.opacity_dur,
    required this.Cont_height,
    required this.Cont_width,
    required this.Cont_color,
    required this.opacity_curve,
  });

  @override
  State<Custom_Float_Container> createState() => _Custom_Float_ContainerState();
}

class _Custom_Float_ContainerState extends State<Custom_Float_Container> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: widget.positioned_dur,
      curve: widget.positioned_curve,
      height: widget.positioned_height,
      top: widget.positioned_top,
      right: widget.positioned_right,
      width: widget.positioned_width,
      child: AnimatedOpacity(
        opacity: widget.opacity_level,
        duration: widget.opacity_dur,
        curve: widget.opacity_curve,
        child: Container(
          height: widget.Cont_height,
          width: widget.Cont_width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: widget.Cont_color,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadiusDirectional.circular(25)),
          child: widget.Cont_child,
        ),
      ),
    );
  }
}


/*

 AnimatedPositioned(
                height: isplay ? Screen_Width / 2.4 : Screen_Width / 2.4,
                top: isplay ? Screen_Width / 1.3 : Screen_Width / .5,
                right: isplay ? Screen_Width * .02 : Screen_Width * .02,
                width: isplay ? Screen_Width / 2 : Screen_Width / 2,
                child: AnimatedOpacity(
                  opacity: opacity_lvl,
                  curve: Curves.easeIn,
                  duration: Duration(seconds: 2),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 1100)),


*/