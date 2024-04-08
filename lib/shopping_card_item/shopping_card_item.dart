import 'package:flutter/widgets.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:shopping_card_example/buttons/like_button/like_button.dart';
import 'package:shopping_card_example/buttons/shop_button/shop_button.dart';

class ShoppingCardItem extends StatelessWidget {
  const ShoppingCardItem({
    super.key,
    required this.pic,
  });

  final String pic;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256.0,
      height: 484.0,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipPath(
                  clipper: GenericItemButtonPath(),
                  child: Container(
                    color: const Color(0xFFFFFFFF),
                    child: Image.asset('assets/images/$pic'),
                  ),
                ),
                const Positioned(
                  right: 8.0,
                  top: 8.0,
                  child: LikeButton(),
                ),
                const Positioned(
                  left: 50,
                  right: 50,
                  bottom: 0,
                  child: ShopButton(),
                ),
              ],
            ),
          ),
          Container(
            height: 86.0,
            padding: const EdgeInsets.all(8.0),
            child: const Column(
              children: [
                Text(
                  'Forest Lovers',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '￥5500',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// CustomClipper
class GenericItemButtonPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = parseSvgPathData(
        'M85.302041,340.62203 C 72.64892,361.30988 51.774701,373.663 29.474295,373.663 21.093153,373.78078 14.960931,373.78078 14.960931,373.78078 6.6982625,373.78078 0,366.23589 0,356.92774 V 16.853737 C 0,7.5455913 6.6982625,0 14.960931,0 H 241.03907 C 249.30174,0 256,7.5455913 256,16.853737 V 356.92774 c 0,9.30815 -6.69826,16.85304 -14.96093,16.85304 h -17.03734 c -21.26636,0 -41.10203,-12.06906 -52.76475,-32.09872 C 162.02029,325.80382 146.08489,315.35424 128,315.35424 c -17.6976,0 -33.336812,10.00686 -42.697959,25.26779 z');

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
