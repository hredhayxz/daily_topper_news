import 'package:daily_topper_news/presentation/utils/package_dependency_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    super.key,
    required this.onNewsCardTap,
  });

  final VoidCallback onNewsCardTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onNewsCardTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black12,
              width: 1.h,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 24.r, vertical: 12.r),
        child: Row(
          children: [
            Wrapper.setCachedNetworkImage(
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/f/f8/10.Bangladesh_quota_reform_movement_2024.jpg',
              fit: BoxFit.fill,
              width: 76.h,
              height: 48.h,
            ),
            SizedBox(width: 10.w),
            Flexible(
              child: Text(
                'কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: const Color(0xFF3F3F3F),
                  fontSize: 16.sp,
                  fontFamily: 'Tiro Bangla',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
