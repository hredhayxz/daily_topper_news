import 'package:daily_topper_news/data/model/news_category_model.dart';
import 'package:get/get.dart';

class NewsCategoryScreenController extends GetxController {
  // News category list
  final List<NewsCategoryModel> _newsCategoryData = [
    NewsCategoryModel(
        categoryName: 'International',
        categoryImageLink:
            'https://s.abcnews.com/images/International/kibbutz-gty-er-241004_1728089359733_hpMain_16x9_992.jpg'),
    NewsCategoryModel(
        categoryName: 'National',
        categoryImageLink:
            'https://news.cgtn.com/news/2024-08-10/Ex-PM-Keating-accuses-Australian-govt-of-bending-to-U-S-will-on-AUKUS-1vXnzObfjUI/img/a669ec53e4d9415caa4525a853c4093f/a669ec53e4d9415caa4525a853c4093f.jpeg'),
    NewsCategoryModel(
        categoryName: 'Sports',
        categoryImageLink:
            'https://bsmedia.business-standard.com/_media/bs/img/article/2023-12/27/full/1703682683-2332.jpg'),
    NewsCategoryModel(
        categoryName: 'Politics',
        categoryImageLink:
            'https://ecdn.dhakatribune.net/contents/cache/images/800x450x1/uploads/media/2023/10/12/M-Sakhawat-Hossain-4e54a3402eb95a11865fa6d551a13a4c.jpg'),
    NewsCategoryModel(
        categoryName: 'Finance',
        categoryImageLink:
            'https://daytradereview.com/wp-content/uploads/2022/06/Best-Financial-News-Websites.jpg'),
    NewsCategoryModel(
        categoryName: 'Entertainment',
        categoryImageLink:
            'https://i.cdn.newsbytesapp.com/images/2823871728203060.jpg'),
    NewsCategoryModel(
        categoryName: 'International',
        categoryImageLink:
            'https://s.abcnews.com/images/International/kibbutz-gty-er-241004_1728089359733_hpMain_16x9_992.jpg'),
    NewsCategoryModel(
        categoryName: 'National',
        categoryImageLink:
            'https://news.cgtn.com/news/2024-08-10/Ex-PM-Keating-accuses-Australian-govt-of-bending-to-U-S-will-on-AUKUS-1vXnzObfjUI/img/a669ec53e4d9415caa4525a853c4093f/a669ec53e4d9415caa4525a853c4093f.jpeg'),
    NewsCategoryModel(
        categoryName: 'Sports',
        categoryImageLink:
            'https://bsmedia.business-standard.com/_media/bs/img/article/2023-12/27/full/1703682683-2332.jpg'),
    NewsCategoryModel(
        categoryName: 'Politics',
        categoryImageLink:
            'https://ecdn.dhakatribune.net/contents/cache/images/800x450x1/uploads/media/2023/10/12/M-Sakhawat-Hossain-4e54a3402eb95a11865fa6d551a13a4c.jpg'),
    NewsCategoryModel(
        categoryName: 'Finance',
        categoryImageLink:
            'https://daytradereview.com/wp-content/uploads/2022/06/Best-Financial-News-Websites.jpg'),
    NewsCategoryModel(
        categoryName: 'Entertainment',
        categoryImageLink:
            'https://i.cdn.newsbytesapp.com/images/2823871728203060.jpg'),
    NewsCategoryModel(
        categoryName: 'International',
        categoryImageLink:
            'https://s.abcnews.com/images/International/kibbutz-gty-er-241004_1728089359733_hpMain_16x9_992.jpg'),
    NewsCategoryModel(
        categoryName: 'National',
        categoryImageLink:
            'https://news.cgtn.com/news/2024-08-10/Ex-PM-Keating-accuses-Australian-govt-of-bending-to-U-S-will-on-AUKUS-1vXnzObfjUI/img/a669ec53e4d9415caa4525a853c4093f/a669ec53e4d9415caa4525a853c4093f.jpeg'),
    NewsCategoryModel(
        categoryName: 'Sports',
        categoryImageLink:
            'https://bsmedia.business-standard.com/_media/bs/img/article/2023-12/27/full/1703682683-2332.jpg'),
    NewsCategoryModel(
        categoryName: 'Politics',
        categoryImageLink:
            'https://ecdn.dhakatribune.net/contents/cache/images/800x450x1/uploads/media/2023/10/12/M-Sakhawat-Hossain-4e54a3402eb95a11865fa6d551a13a4c.jpg'),
    NewsCategoryModel(
        categoryName: 'Finance',
        categoryImageLink:
            'https://daytradereview.com/wp-content/uploads/2022/06/Best-Financial-News-Websites.jpg'),
    NewsCategoryModel(
        categoryName: 'Entertainment',
        categoryImageLink:
            'https://i.cdn.newsbytesapp.com/images/2823871728203060.jpg'),
    NewsCategoryModel(
        categoryName: 'International',
        categoryImageLink:
            'https://s.abcnews.com/images/International/kibbutz-gty-er-241004_1728089359733_hpMain_16x9_992.jpg'),
    NewsCategoryModel(
        categoryName: 'National',
        categoryImageLink:
            'https://news.cgtn.com/news/2024-08-10/Ex-PM-Keating-accuses-Australian-govt-of-bending-to-U-S-will-on-AUKUS-1vXnzObfjUI/img/a669ec53e4d9415caa4525a853c4093f/a669ec53e4d9415caa4525a853c4093f.jpeg'),
    NewsCategoryModel(
        categoryName: 'Sports',
        categoryImageLink:
            'https://bsmedia.business-standard.com/_media/bs/img/article/2023-12/27/full/1703682683-2332.jpg'),
    NewsCategoryModel(
        categoryName: 'Politics',
        categoryImageLink:
            'https://ecdn.dhakatribune.net/contents/cache/images/800x450x1/uploads/media/2023/10/12/M-Sakhawat-Hossain-4e54a3402eb95a11865fa6d551a13a4c.jpg'),
    NewsCategoryModel(
        categoryName: 'Finance',
        categoryImageLink:
            'https://daytradereview.com/wp-content/uploads/2022/06/Best-Financial-News-Websites.jpg'),
    NewsCategoryModel(
        categoryName: 'Entertainment',
        categoryImageLink:
            'https://i.cdn.newsbytesapp.com/images/2823871728203060.jpg'),
    NewsCategoryModel(
        categoryName: 'International',
        categoryImageLink:
            'https://s.abcnews.com/images/International/kibbutz-gty-er-241004_1728089359733_hpMain_16x9_992.jpg'),
    NewsCategoryModel(
        categoryName: 'National',
        categoryImageLink:
            'https://news.cgtn.com/news/2024-08-10/Ex-PM-Keating-accuses-Australian-govt-of-bending-to-U-S-will-on-AUKUS-1vXnzObfjUI/img/a669ec53e4d9415caa4525a853c4093f/a669ec53e4d9415caa4525a853c4093f.jpeg'),
    NewsCategoryModel(
        categoryName: 'Sports',
        categoryImageLink:
            'https://bsmedia.business-standard.com/_media/bs/img/article/2023-12/27/full/1703682683-2332.jpg'),
    NewsCategoryModel(
        categoryName: 'Politics',
        categoryImageLink:
            'https://ecdn.dhakatribune.net/contents/cache/images/800x450x1/uploads/media/2023/10/12/M-Sakhawat-Hossain-4e54a3402eb95a11865fa6d551a13a4c.jpg'),
    NewsCategoryModel(
        categoryName: 'Finance',
        categoryImageLink:
            'https://daytradereview.com/wp-content/uploads/2022/06/Best-Financial-News-Websites.jpg'),
    NewsCategoryModel(
        categoryName: 'Entertainment',
        categoryImageLink:
            'https://i.cdn.newsbytesapp.com/images/2823871728203060.jpg'),
    NewsCategoryModel(
        categoryName: 'International',
        categoryImageLink:
            'https://s.abcnews.com/images/International/kibbutz-gty-er-241004_1728089359733_hpMain_16x9_992.jpg'),
    NewsCategoryModel(
        categoryName: 'National',
        categoryImageLink:
            'https://news.cgtn.com/news/2024-08-10/Ex-PM-Keating-accuses-Australian-govt-of-bending-to-U-S-will-on-AUKUS-1vXnzObfjUI/img/a669ec53e4d9415caa4525a853c4093f/a669ec53e4d9415caa4525a853c4093f.jpeg'),
    NewsCategoryModel(
        categoryName: 'Sports',
        categoryImageLink:
            'https://bsmedia.business-standard.com/_media/bs/img/article/2023-12/27/full/1703682683-2332.jpg'),
    NewsCategoryModel(
        categoryName: 'Politics',
        categoryImageLink:
            'https://ecdn.dhakatribune.net/contents/cache/images/800x450x1/uploads/media/2023/10/12/M-Sakhawat-Hossain-4e54a3402eb95a11865fa6d551a13a4c.jpg'),
    NewsCategoryModel(
        categoryName: 'Finance',
        categoryImageLink:
            'https://daytradereview.com/wp-content/uploads/2022/06/Best-Financial-News-Websites.jpg'),
    NewsCategoryModel(
        categoryName: 'Entertainment',
        categoryImageLink:
            'https://i.cdn.newsbytesapp.com/images/2823871728203060.jpg'),
    NewsCategoryModel(
        categoryName: 'International',
        categoryImageLink:
            'https://s.abcnews.com/images/International/kibbutz-gty-er-241004_1728089359733_hpMain_16x9_992.jpg'),
    NewsCategoryModel(
        categoryName: 'National',
        categoryImageLink:
            'https://news.cgtn.com/news/2024-08-10/Ex-PM-Keating-accuses-Australian-govt-of-bending-to-U-S-will-on-AUKUS-1vXnzObfjUI/img/a669ec53e4d9415caa4525a853c4093f/a669ec53e4d9415caa4525a853c4093f.jpeg'),
    NewsCategoryModel(
        categoryName: 'Sports',
        categoryImageLink:
            'https://bsmedia.business-standard.com/_media/bs/img/article/2023-12/27/full/1703682683-2332.jpg'),
    NewsCategoryModel(
        categoryName: 'Politics',
        categoryImageLink:
            'https://ecdn.dhakatribune.net/contents/cache/images/800x450x1/uploads/media/2023/10/12/M-Sakhawat-Hossain-4e54a3402eb95a11865fa6d551a13a4c.jpg'),
    NewsCategoryModel(
        categoryName: 'Finance',
        categoryImageLink:
            'https://daytradereview.com/wp-content/uploads/2022/06/Best-Financial-News-Websites.jpg'),
    NewsCategoryModel(
        categoryName: 'Entertainment',
        categoryImageLink:
            'https://i.cdn.newsbytesapp.com/images/2823871728203060.jpg'),
  ];

  List<NewsCategoryModel> get newsCategoryData => _newsCategoryData;
}
