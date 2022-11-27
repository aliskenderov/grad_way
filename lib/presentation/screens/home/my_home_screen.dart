import 'package:flutter/material.dart';
import '../../../utilities/constants/app_styles.dart';
import '../../../utilities/constants/class_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 3,
      vsync: this,
    );

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              ClipPath(
                clipper: Customshape(),
                child: Container(
                  height: 170,
                  color: AppColors.blueColor,
                ),
              ),
              Positioned(
                top: 26,
                left: 20,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: AppColors.blueColor, shape: BoxShape.circle),
                      child: const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(
                          'assets/images/emiliy.jpg',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28, left: 10),
                      child: Text(
                        'Hi,Juliano campbell',
                        style: TextStyles.styleForSubtitle.copyWith(
                            color: AppColors.colorText,
                            fontSize: 18,
                            letterSpacing: 2),
                      ),
                    ),
                  ],
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 16),
              child: Text(
                'List of item you have published.',
                style: TextStyles.styleForSubtitle.copyWith(
                    color: AppColors.colorText, fontSize: 18, letterSpacing: 2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 16, right: 12),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 2,
                        color: Color.fromARGB(255, 219, 218, 218))
                  ],
                  color: const Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xff4BC4F1)),
                  controller: tabController,
                  labelColor: AppColors.whiteColor,
                  unselectedLabelColor: AppColors.colorText,
                  tabs: [
                    Tab(
                      child:
                          Text('Genaral \n orders', style: TextStyles.fontSize),
                    ),
                    Tab(
                      child: Text('Pending \n  orders',
                          style: TextStyles.fontSize),
                    ),
                    Tab(
                      child: Text('Finished \n  orders',
                          style: TextStyles.fontSize),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text('No open job save yet!',
                    style: TextStyles.styleForSubtitle
                        .copyWith(color: AppColors.colorText)),
              ),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                vertical: 18,
              ),
              margin: const EdgeInsets.all(28),
            ),
          ],
        ),
      ),
    );
  }
}
