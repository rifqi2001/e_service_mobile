import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    )..repeat(reverse: true);
    _animation = Tween(begin: 0.0, end: 3.0).animate(_animationController);
    startLoading();
  }

  void startLoading() async {
    // Add a delay of 3 seconds
    await Future.delayed(Duration(seconds: 3));

    // Navigate to next screen after loading is complete
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Transform.scale(
              scale: 1.0 + (_animation.value * 0.2),
              child: child,
            );
          },
          child: Image.asset(
            'assets/icons/E-SERVICE.png',
            width: 125.0,
            height: 125.0,
          ),
        ),
      ),
    );
  }
}
