import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_majdouch/screens/home_screen/home_screen_desktop.dart';
import 'package:provider/provider.dart';

import '../provider/navigation_provider.dart';
import '../screens/about_screen/about_screen_mobile.dart';
import '../screens/contact_screen/contact_screen.dart';
import '../screens/home_screen/home_screen_mobile.dart';
import '../screens/projects_screen/projects_screen_mobile.dart';
import '../screens/teck_screen/teck_screen_mobile.dart';
import '../widgets/button_resume.dart';
import '../widgets/social_media_widget.dart';

class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  State<MyDesktopBody> createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAlignment = 0.0;

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
      const HomeScreenDesktop(),
      const AboutScreenMobile(),
      const TeckScreenMobile(),
      const ProjectsScreenMobile(),
      const ContactScreenMobile(),
    ];
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: navigationProvider.currentIndex,
            groupAlignment: groupAlignment,
            onDestinationSelected: (int index) {
              navigationProvider.currentIndex = index;
              setState(() {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.ease,
                );
              });
            },
            labelType: labelType,
            leading: showLeading
                ? FloatingActionButton(
                    elevation: 0,
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    child: const Icon(Icons.add),
                  )
                : const SizedBox(),
            trailing: showTrailing
                ? IconButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    icon: const Icon(Icons.more_horiz_rounded),
                  )
                : const SizedBox(),
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                  icon: Icon(
                    Icons.account_circle,
                  ),
                  label: Text('Home')),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.account_balance_outlined,
                  ),
                  label: Text('About')),
              NavigationRailDestination(
                  icon: FaIcon(
                    FontAwesomeIcons.barsProgress,
                  ),
                  label: Text('Teck')),
              NavigationRailDestination(
                  icon: FaIcon(FontAwesomeIcons.briefcase),
                  label: Text('Projects')),
              NavigationRailDestination(
                  icon: FaIcon(FontAwesomeIcons.phone), label: Text('Contact')),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
              child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            controller: pageController,
            children: screens,
          )),
        ],
      ),
    );
  }
}
