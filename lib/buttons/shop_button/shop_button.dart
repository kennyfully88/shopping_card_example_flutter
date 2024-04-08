import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ShopButton extends StatefulWidget {
  const ShopButton({super.key});

  @override
  State<ShopButton> createState() => _ShopButtonState();
}

class _ShopButtonState extends State<ShopButton> {
  bool isMouseIn = false;
  bool isBeingPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      onTapDown: (details) {
        setState(() {
          isBeingPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isBeingPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          isBeingPressed = false;
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {
          setState(() {
            isMouseIn = true;
          });
        },
        onExit: (event) {
          setState(() {
            isMouseIn = false;
          });
        },
        child: AnimatedScale(
          duration: const Duration(milliseconds: 100),
          scale: isMouseIn ? 1.1 : 1.0,
          child: Container(
            decoration: BoxDecoration(
              color: isBeingPressed
                  ? const Color(0xFF404040)
                  : const Color(0xFF000000),
              shape: BoxShape.circle,
            ),
            width: 72.0,
            height: 72.0,
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset('assets/svgs/buy_icon.svg'),
          ),
        ),
      ),
    );
  }
}
