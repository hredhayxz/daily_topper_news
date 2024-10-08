import 'package:daily_topper_news/controller/news_category_screen_controller.dart';
import 'package:daily_topper_news/presentation/widgets/news_category_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NewsCategoryScreen extends GetView<NewsCategoryScreenController> {
  const NewsCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text('Categories'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 32.h),
            // NewsCategoryCardWidget(),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 32.r),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 24.h,
                  mainAxisSpacing: 24.h,
                  childAspectRatio: 0.8),
              itemCount: controller.newsCategoryData.length,
              itemBuilder: (context, index) {
                return NewsCategoryCardWidget(
                    newsCategoryData: controller.newsCategoryData[index],
                    onCategoryTap: () {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
