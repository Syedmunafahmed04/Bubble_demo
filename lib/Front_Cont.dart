import 'package:flutter/material.dart';

class Front_Container extends StatefulWidget {
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
  const Front_Container({
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
  State<Front_Container> createState() => _Front_ContainerState();
}

class _Front_ContainerState extends State<Front_Container>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true); 

    _animation = Tween<double>(begin: -10.0, end: 10.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut, 
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); 
    super.dispose();
  }

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
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _animation.value),
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
            );
          },
        ),
      ),
    );
  }
}
