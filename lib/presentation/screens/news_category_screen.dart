import 'package:daily_topper_news/presentation/utils/package_dependency_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsCategoryScreen extends StatelessWidget {
  const NewsCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              itemCount: 37,
              itemBuilder: (context, index) {
                return NewsCategoryCardWidget(
                  onCategoryTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewsCategoryCardWidget extends StatelessWidget {
  const NewsCategoryCardWidget({
    super.key,
    required this.onCategoryTap,
  });

  final VoidCallback onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCategoryTap,
      child: SizedBox(
        width: 96.h,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Wrapper.setCachedNetworkImage(
                imageUrl:
                    'https://media.cnn.com/api/v1/images/stellar/prod/20240303-03-trump-biden-split-20240304120045189.jpg',
                fit: BoxFit.fill,
                width: 96.h,
                height: 96.h,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'National',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: const Color(0xFF525252),
                fontSize: 12.sp,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
