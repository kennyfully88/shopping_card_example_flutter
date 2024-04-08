import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool liked = false;
  bool isMouseIn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          liked = !liked;
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
            decoration: const BoxDecoration(
              color: Color(0x80FFFFFF),
              shape: BoxShape.circle,
            ),
            width: 48.0,
            height: 48.0,
            padding: const EdgeInsets.all(8.0),
            child: liked
                ? SvgPicture.asset('assets/svgs/like_icon_02.svg')
                : SvgPicture.asset('assets/svgs/like_icon.svg'),
          ),
        ),
      ),
    );
  }
}
