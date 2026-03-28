import 'package:fashion/core/helpers/spacing.dart';
import 'package:fashion/core/theiming/styles.dart';
import 'package:fashion/feature/home/ui/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Runway", style: TextStyles.font18BlackBold)),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 14),
          child: FaIcon(
            FontAwesomeIcons.barsStaggered,
            color: Colors.black,
            size: 24,
          ),
        ),
        actions: [
          FaIcon(FontAwesomeIcons.bell, color: Colors.black, size: 24),
          horizontalSpace(12),
        ],
      ),
      body: HomeScreenBody(),
    );
  }
}
