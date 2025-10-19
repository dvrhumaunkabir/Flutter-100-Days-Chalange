import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

import '../Fragment/Page2.dart';
import '../Fragment/Page3.dart';
import '../Fragment/Page4.dart';
import '../Fragment/Page5.dart';
import '../Fragment/PageOne.dart';

// Placeholder People page
class People extends StatelessWidget {
  const People({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("People Page")),
      body: const Center(child: Text("This is the People Page")),
    );
  }
}

class CustomTabStateful extends StatefulWidget {
  final VoidCallback onThemeToggle; // 👈 declare

  const CustomTabStateful({super.key, required this.onThemeToggle});
  @override
  _CustomTabStatefulState createState() => _CustomTabStatefulState();
}

class _CustomTabStatefulState extends State<CustomTabStateful>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int notificationCount = 5; // Badge count
  bool isDarkMode = false;

  final List<Color> indicatorColors = [
    Colors.blue,
    Colors.purple,
    Colors.green,
    Colors.orange,
    Colors.red,
  ];

  final List<Color> iconActiveColors = [
    Colors.blue,
    Colors.purple,
    Colors.green,
    Colors.orange,
    Colors.red,
  ];

  final List<Color> iconInactiveColors = [
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
  ];

  final List<IconData> tabIcons = [
    Icons.swap_horizontal_circle,
    Icons.swap_vert_circle,
    Icons.add_box_rounded,
    Icons.arrow_drop_down_circle_sharp,
    Icons.note_alt,
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabIcons.length, vsync: this);

    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Color _getIconColor(int index) {
    return _tabController.index == index
        ? iconActiveColors[index]
        : iconInactiveColors[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Flutter ", style: TextStyle(color: Colors.black)),
          elevation: 10,
          actions: [
            IconButton(
              icon: const Icon(Icons.nightlight_round),
              onPressed: widget.onThemeToggle, // 👈 use widget. here
            ),


            const SizedBox(width: 10),


      // ✅ Notification icon with badge
      badges.Badge(
        position: badges.BadgePosition.topEnd(top: 3, end: 3),
        badgeContent: Text(
          notificationCount.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
        showBadge: true, // Always show badge
        badgeStyle: const badges.BadgeStyle(
          badgeColor: Colors.red,
          padding: EdgeInsets.all(5),
        ),
        child: IconButton(
          icon: const Icon(Icons.notifications, color: Colors.black),
          onPressed: () {
            setState(() {
              // Example: clear notifications when pressed
              notificationCount = 0;
            });
          },
        ),
      ),
      const SizedBox(width: 10),

      const Icon(Icons.settings, color: Colors.black),
      const SizedBox(width: 10),
],
        bottom: TabBar(
          controller: _tabController,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 5,
              color: indicatorColors[_tabController.index],
            ),
          ),
          tabs: List.generate(tabIcons.length, (index) {
            return Tab(
              icon: Icon(
                size: 27,
                tabIcons[index],
                color: _getIconColor(index),
              ),
            );
          }),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          HotelBookingScreen(),
          Fragment2(),
          Fragment3(),
          Fragment4(),
          HomePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        elevation: 20,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.black.withOpacity(0.4),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],

      ),

      // ✅ Drawer added correctly
      drawer: Drawer(
        child: Material(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerWidget(),
                const SizedBox(height: 40),
                const Divider(thickness: 1, height: 10, color: Colors.black),
                const SizedBox(height: 10),
                DrawerItem(
                  name: 'People',
                  icon: Icons.people,
                  onPressed: () => onItemPressed(context, index: 0),
                ),
                const SizedBox(height: 10),
                DrawerItem(
                  name: 'My Account',
                  icon: Icons.account_box_rounded,
                  onPressed: () => onItemPressed(context, index: 1),
                ),
                const SizedBox(height: 10),
                DrawerItem(
                  name: 'Chats',
                  icon: Icons.message_outlined,
                  onPressed: () => onItemPressed(context, index: 2),
                ),
                const SizedBox(height: 10),
                DrawerItem(
                  name: 'Favourites',
                  icon: Icons.favorite_outline,
                  onPressed: () => onItemPressed(context, index: 3),
                ),
                const SizedBox(height: 10),
                const Divider(thickness: 1, height: 10, color: Colors.black),
                const SizedBox(height: 10),
                DrawerItem(
                  name: 'Setting',
                  icon: Icons.settings,
                  onPressed: () => onItemPressed(context, index: 4),
                ),
                const SizedBox(height: 10),
                DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: () => onItemPressed(context, index: 5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const People()),
        );
        break;
      case 5:
      // Example log out action
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Logged out")),
        );
        break;
    }
  }

  Widget headerWidget() {
    const url =
        'https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo=';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Person name',
                style: TextStyle(fontSize: 14, color: Colors.black)),
            SizedBox(height: 10),
            Text('person@email.com',
                style: TextStyle(fontSize: 14, color: Colors.black)),
          ],
        )
      ],
    );
  }
}

// ✅ DrawerItem Widget
class DrawerItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final VoidCallback onPressed;

  const DrawerItem({
    super.key,
    required this.name,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(name, style: const TextStyle(color: Colors.black)),
      onTap: onPressed,
    );
  }
}
