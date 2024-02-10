import 'package:flutter/material.dart';
import 'package:vechical_dispatch/pages/User.dart';
import 'package:vechical_dispatch/pages/home.dart';
import 'package:vechical_dispatch/pages/settings.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

   var Tabs = [];
   int currentTabIndex = 0;

   void initState() {
    // TODO: implement initState
    super.initState();
    Tabs = [
      Home(),
      User(),
      settings(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Scaffold(
          body: Tabs[currentTabIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentTabIndex,
              onTap: (currenttIndex) {
                print('Currentindex is $currenttIndex');
                currentTabIndex = currenttIndex;
                setState(() {});
              },
              selectedItemColor: Colors.black,
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                    ),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.library_music_outlined,
                    ),
                    label: 'Your Liberary'),
              ]),
        )
    );
  }
}