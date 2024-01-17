import 'package:flutter/cupertino.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.systemOrange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.news,
            ),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.settings,
              ),
              label: 'Settings'),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const FeedsPage();

          case 1:
            return const SearchPage();

          case 2:
            return const SettingsPage();
          default:
            return Center(
              child: Text('Page not found'),
            );
        }
      },
    );
  }
}

class FeedsPage extends StatelessWidget {
  const FeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Feeds Page'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Feeds Page',
                style:
                    CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
              ),
              SizedBox(
                height: 8,
              ),
              CupertinoButton.filled(
                child: Text('Select Category'),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Search Page'),
        ),
        child: Center(
          child: Text(
            'Search Page',
            style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
          ),
        ));
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Settings Page'),
        ),
        child: Center(
          child: Text(
            'Settings Page',
            style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
          ),
        ));
  }
}
