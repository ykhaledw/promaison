import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PromaisonLogo extends StatelessWidget {
  const PromaisonLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/svgs/promaison_logo.svg');
  }
}