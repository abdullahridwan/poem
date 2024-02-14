import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';

class Poloroid extends StatefulWidget {
  final String assetName;
  final String labelText;

  Poloroid({Key? key, required this.assetName, required this.labelText})
      : super(key: key);

  @override
  _PoloroidState createState() => _PoloroidState();
}

class _PoloroidState extends State<Poloroid> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Start the rotation animation after a delay of 5 seconds
    Future.delayed(Duration(seconds: 3), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        height: 275,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GifView.asset(
                  widget.assetName,
                  frameRate: 10,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.labelText,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
