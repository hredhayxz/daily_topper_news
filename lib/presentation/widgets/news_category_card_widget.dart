import 'package:daily_topper_news/data/model/news_category_model.dart';
import 'package:daily_topper_news/presentation/utils/package_dependency_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsCategoryCardWidget extends StatelessWidget {
  const NewsCategoryCardWidget({
    super.key,
    required this.onCategoryTap,
    required this.newsCategoryData,
  });

  final NewsCategoryModel newsCategoryData;
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
                imageUrl: newsCategoryData.categoryImageLink,
                fit: BoxFit.fill,
                width: 96.h,
                height: 96.h,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              newsCategoryData.categoryName,
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
