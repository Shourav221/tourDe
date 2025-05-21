import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_de/tabBarPages/location.dart';
import '../Widget/CityCart.dart';
import '../Widget/drawerList.dart';
import 'logIn.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  TextEditingController searchController = TextEditingController();

  // For the Alert popUp messege
  void showAlertDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.warning,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Warning',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              content: Text(
                'Are you sure to exit from App?',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context) => Login()),
                          (Route<dynamic>route) => false,
                      );
                    },
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.black, fontSize: 16.sp),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.black, fontSize: 16.sp),
                    )),
              ],
            ));
  }

  int _selectedTab = 0; // Tracks the currently selected tab index

  List<IconData> _icons = [
    FontAwesomeIcons.wifi,
    FontAwesomeIcons.fire,
    FontAwesomeIcons.locationDot,
    FontAwesomeIcons.peopleGroup,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _selectedTab, // Set initial tab
      length: _icons.length,
      child: Builder(
        builder: (context) {
          // Listen to tab changes
          DefaultTabController.of(context).addListener(() {
            setState(() {
              _selectedTab = DefaultTabController.of(context).index;
            });
          });
          return Scaffold(
            appBar: AppBar(
              elevation: 8,
              toolbarHeight: 70.h,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                side: BorderSide(style: BorderStyle.none),
              ),
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    size: 35.h,
                  ),
                ),
              ),
              title: Container(
                height: 35.h,
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              actions: [
                CircleAvatar(
                  radius: 20.h,
                  child: Icon(Icons.person),
                ),
              ],
              bottom: TabBar(
                indicatorColor: Colors.teal,
                tabs: _icons.asMap().entries.map((entry) {
                  int index = entry.key;
                  IconData icon = entry.value;
                  return Tab(
                    icon: FaIcon(
                      icon,
                      size: 30,
                      color: _selectedTab == index
                          ? Colors.teal
                          : Colors.grey, // Dynamic color
                    ),
                  );
                }).toList(),
              ),
            ),
            drawer: Drawer(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: CircleBorder(),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Text(
                          'Menu',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1, color: Colors.black),
                  CustomListTile(
                    title: 'My Plan',
                    leading: Icon(Icons.event_available),
                    destination: Login(),
                  ),
                  CustomListTile(
                    title: 'Create Plan',
                    leading: Icon(Icons.add_outlined),
                    destination: Login(),
                  ),
                  CustomListTile(
                    title: 'Hotel',
                    leading: Icon(Icons.hotel),
                    destination: Login(),
                  ),
                  CustomListTile(
                    title: 'Vehicle',
                    leading: Icon(Icons.car_rental),
                    destination: Login(),
                  ),
                  CustomListTile(
                    title: 'Wish List',
                    leading: Icon(Icons.add_shopping_cart),
                    destination: Login(),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomListTile(
                        title: 'Setting and Privacy',
                        leading: Icon(Icons.settings),
                        destination: Login(),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),

                  // For LogOut button
                  SizedBox(
                    width: 200.w,
                    height: 50.h,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showAlertDialog();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(10.w, 100),
                          shadowColor: Colors.grey,
                          backgroundColor: Colors.white,
                        ),
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(child: Icon(Icons.home, size: 50.h)),
                Center(child: Icon(Icons.home, size: 50.h)),
                location(),
                Center(child: FaIcon(FontAwesomeIcons.fire, size: 30)),
              ],
            ),
          );
        },
      ),
    );
  }
}
