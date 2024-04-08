import 'package:flutter/widgets.dart';
import 'package:shopping_card_example/shopping_card_item/shopping_card_item.dart';

void main() {
  runApp(const ShoppingCardExampleApp());
}

class ShoppingCardExampleApp extends StatelessWidget {
  const ShoppingCardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'noto',
        ),
        child: Container(
          color: const Color(0xFF404080),
          child: const SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: ShoppingCardItem(pic: 'model_001.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
