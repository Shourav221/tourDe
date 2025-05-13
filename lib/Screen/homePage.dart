import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_de/buttons/iconButton.dart';
import 'package:tour_de/pages/location.dart';
import '../Widget/drawerList.dart';
import 'logIn.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70.h,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                side: BorderSide(color: Colors.black)),
            //for menu or drawer opening
            leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      size: 35.h,
                    ))),
            title: Container(
              height: 35.h,
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            actions: [
              CircleAvatar(
                radius: 20.h,
                child: Icon(Icons.person),
              ),
            ],

            // for tapbar
            bottom: TabBar(
              indicatorColor: Colors.teal,
              tabs: [
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.wifi,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.fire,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.locationDot,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.peopleGroup,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          //Drawer Navigation
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50.h),
                  child: Row(
                    children: [
                      //To close the drawer
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
                              shape: CircleBorder()),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Menu',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                CustomListTile(
                  title: 'My Plan',
                  leading: Icon(
                    Icons.event_available,
                  ),
                  destination: Login(),
                ),
                CustomListTile(
                  title: 'Create Plan',
                  leading: Icon(
                    Icons.add_outlined,
                  ),
                  destination: Login(),
                ),
                CustomListTile(
                  title: 'Hotel',
                  leading: Icon(
                    Icons.hotel,
                  ),
                  destination: Login(),
                ),
                CustomListTile(
                  title: 'Vehicle',
                  leading: Icon(
                    Icons.car_rental,
                  ),
                  destination: Login(),
                ),
                CustomListTile(
                  title: 'Wish List',
                  leading: Icon(
                    Icons.add_shopping_cart,
                  ),
                  destination: Login(),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomListTile(
                      title: 'Setting and Privacy',
                      leading: Icon(
                        Icons.settings,
                      ),
                      destination: Login(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 200.w,
                  height: 50.h,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w900),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(10.w, 100),
                        shadowColor: Colors.grey,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(
                child: Icon(
              Icons.home,
              size: 50.h,
            )),
            Center(
                child: Icon(
              Icons.home,
              size: 50.h,
            )),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 220.w),
                    child: Text(
                      'Places',
                      style: TextStyle(
                        fontSize: 25.h,
                        color: Colors.teal,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  location(name: 'Ashish',Photo: 'https://www.theknickerbocker.com/content/uploads/2024/02/knb_nyc_landmarks_times_square_1138719689.webp',)
                ],
              ),
            ),
            Center(
                child: Icon(
              Icons.home,
              size: 50.h,
            )),
          ])),
    );
  }
}
