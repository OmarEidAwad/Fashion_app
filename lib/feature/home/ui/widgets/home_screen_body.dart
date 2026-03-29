import 'package:fashion/core/helpers/spacing.dart';
import 'package:fashion/core/theiming/font_weight_helper.dart';
import 'package:fashion/core/theiming/styles.dart';
import 'package:fashion/feature/home/ui/widgets/categories_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/video/video.mp4")
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      })
      ..setLooping(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(12),
          Container(
            decoration: BoxDecoration(boxShadow: [BoxShadow()]),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.63.h,
            child: VideoPlayer(_controller),
          ),
          verticalSpace(12),
          Text(
            "   Categories",
            style: TextStyles.font14BlackMedium.copyWith(
              fontWeight: FontWeightHelper.bold,
            ),
          ),
          verticalSpace(12),
          SizedBox(height: 100.h, child: CategoriesListView()),
          // Divider(),

          // verticalSpace(20),
        ],
      ),
    );
  }
}
