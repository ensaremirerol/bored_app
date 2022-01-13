import 'package:flutter/material.dart';

class ItemFader extends StatefulWidget {
  const ItemFader({Key? key, required this.child, this.maxOffsetY = 128})
      : super(key: key);
  final Widget child;
  final double maxOffsetY;
  @override
  ItemFaderState createState() => ItemFaderState();
}

class ItemFaderState extends State<ItemFader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late double offsetY;
  int direction = -1;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) => Transform.translate(
        offset: Offset(0, offsetY - (widget.maxOffsetY * _animation.value)),
        child: Opacity(
          opacity: direction == 1 ? _animation.value : 1 - _animation.value,
          child: child,
        ),
      ),
      child: widget.child,
    );
  }

  void fadeIn() async {
    direction = 1;
    offsetY = widget.maxOffsetY * direction;
    _controller.reset();
    _controller.forward();
  }

  void fadeOut() async {
    direction = -1;
    offsetY = 0;
    _controller.reset();
    _controller.forward();
  }
}
