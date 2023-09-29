import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_majdouch/screens/about_screen/about_screen_mobile.dart';
import 'package:portfolio_majdouch/screens/home_screen/home_screen_mobile.dart';
import 'package:portfolio_majdouch/screens/teck_screen/teck_screen_mobile.dart';
import 'package:portfolio_majdouch/utils/colors.dart';
import 'package:provider/provider.dart';

import '../provider/navigation_provider.dart';
import '../screens/contact_screen/contact_screen.dart';
import '../screens/projects_screen/projects_screen_mobile.dart';
import '../widgets/button_resume.dart';
import '../widgets/social_media_widget.dart';

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    PageController pageController =
        PageController(initialPage: navigationProvider.currentIndex);

    final List<Widget> screens = [
      const HomeScreenMobile(),
      const AboutScreenMobile(),
      const TeckScreenMobile(),
      const ProjectsScreenMobile(),
      const ContactScreenMobile(),
    ];
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        controller: pageController,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: navigationProvider.currentIndex,
          onTap: (index) {
            navigationProvider.currentIndex = index;
            setState(() {
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 600),
                curve: Curves.ease,
              );
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: blueColor),
          unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_outlined,
                ),
                label: "About"),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.barsProgress,
                ),
                label: "Teck"),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.briefcase), label: "Projects"),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.phone), label: "Contact"),
          ]),
    );
  }
}
