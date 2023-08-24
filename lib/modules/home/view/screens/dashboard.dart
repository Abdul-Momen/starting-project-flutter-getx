import 'package:aladin/widget/home_generate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Map<String, dynamic>> homeMenu = [
    {
      'title': 'Curriculum',
      'imgUrl': ' ImageUrl.tabligh_1',
      //'page': const AllTablighi(),
      'color':'0xffDDFDE5',

    },
    {
      'title': 'Routine',
      'imgUrl': "ImageUrl.tabligh_8",
      //'page': const MyTablighView(),
      'color':'0xffFFF4CB',

    },
    {
      'title': 'Online Class',
      'imgUrl': "ImageUrl.tabligh_8",
      //  'page': const QuranView(),
      'color':'0xffEDCFFF',

    },
    {
      'title': 'Exam',
      'imgUrl': "ImageUrl.tabligh_8",
      //  'page': const HadithView(),
      'color':'0xffD7ECFF',

    },
    {
      'title': 'Report Card',
      'imgUrl': "ImageUrl.tabligh_8",
      //'page': const HajjAndUmrahView(),
      'color':'0xffD4F7FF',

    },
    {
      'title': 'Attendance',
      'imgUrl': "ImageUrl.tabligh_8",
      //'page': const SalatDescriptionView(),
      'color':'0xffE8E8E8',

    },
    {
      'title': 'My Teacher',
      'imgUrl': "ImageUrl.tabligh_8",
      // 'page': const MasjidAndQuiblaView(),
      'color':'0xffE5FFD6',

    },
    {
      'title': 'Calender',
      'imgUrl': "ImageUrl.tabligh_8",
      // 'page': const MasjidAndQuiblaView(),
      'color':'0xffE0E7FF',

    },

    {
      'title': 'Leave',
      'imgUrl': "ImageUrl.tabligh_8",
      // 'page': const MasjidAndQuiblaView(),
      'color':'0xffFEFFD4',

    },
    {
      'title': 'Fees',
      'imgUrl': "ImageUrl.tabligh_8",
      // 'page': const MasjidAndQuiblaView(),
      'color':'0xffFCEFE3',


    },
    {
      'title': 'Transport',
      'imgUrl': "ImageUrl.tabligh_8",
      // 'page': const MasjidAndQuiblaView(),
      'color':'0xffFFF9EE',

    },
    {
      'title': 'Whay This App',
      'imgUrl': "ImageUrl.tabligh_8",
      // 'page': const MasjidAndQuiblaView(),
      'color':'0xffDADEFF',

    },
    {
      'title': 'Help Center',
      'imgUrl': "ImageUrl.tabligh_8",
      // 'page': const MasjidAndQuiblaView(),
      'color':'0xffD9F1FF',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 800.h,
            child: HomeMenuGenerator(
              menu: homeMenu,
            ),
          ),
        ],
      ),
    );
  }
}
