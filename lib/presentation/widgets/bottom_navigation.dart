import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_project/presentation/screens/account_screen.dart';
import 'package:flutter_demo_project/presentation/screens/chat_screen.dart';
import 'package:flutter_demo_project/presentation/screens/home/my_home_screen.dart';
import '../../utilities/constants/app_styles.dart';
import '../screens/add_screen.dart';
import '../screens/notfications_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomeScreen(),
    const NotficationsScreen(),
    const AddScreen(),
    const ChatScreen(),
    const AccountScreen()
  ];
  int currentIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  void onTap(
    int index,
  ) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: [
          CurvedNavigationBarItem(
              child: Icon(
                Icons.home,
                color: AppColors.whiteColor,
              ),
              label: currentIndex == 0 ? '' : 'Home',
              labelStyle: TextStyles.styleForSubtitle
                  .copyWith(fontSize: 14, fontWeight: FontWeight.normal)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.IconDatanotifications_active_sharp,
                color: AppColors.whiteColor,
              ),
              label: currentIndex == 1 ? '' : 'Notfications',
              labelStyle: TextStyles.styleForSubtitle
                  .copyWith(fontSize: 14, fontWeight: FontWeight.normal)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.add,
                color: AppColors.whiteColor,
              ),
              label: currentIndex == 2 ? '' : 'Add',
              labelStyle: TextStyles.styleForSubtitle
                  .copyWith(fontSize: 14, fontWeight: FontWeight.normal)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.chat,
                color: AppColors.whiteColor,
              ),
              label: currentIndex == 3 ? '' : 'Chat',
              labelStyle: TextStyles.styleForSubtitle
                  .copyWith(fontSize: 14, fontWeight: FontWeight.normal)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.account_circle,
                color: AppColors.whiteColor,
              ),
              label: currentIndex == 4 ? '' : 'Account',
              labelStyle: TextStyles.styleForSubtitle
                  .copyWith(fontSize: 14, fontWeight: FontWeight.normal)),
        ],
        color: AppColors.blueColor,
        buttonBackgroundColor: AppColors.blueColor,
        backgroundColor: AppColors.whiteColor,
        animationCurve: Curves.easeIn,
        animationDuration: const Duration(milliseconds: 600),
        onTap: onTap,
        letIndexChange: (index) => true,
      ),
      backgroundColor: Colors.white,
      body: pages[currentIndex],
    );
  }
}
