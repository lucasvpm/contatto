import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginBottomWidget extends StatelessWidget {
  const LoginBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/aba-rodape.jpg'),
          fit: BoxFit.cover,
          alignment: Alignment.center
        )
      ),
    );
  }
}