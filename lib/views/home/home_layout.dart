import 'package:market/views/cart/cart_screen.dart';
import 'package:market/views/category/category_screen.dart';
import 'package:market/views/home/home_screen.dart';
import 'package:market/views/product/product_screen.dart';
import 'package:market/views/profile/profile_screen.dart';

import '../../config/consts.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  bool isMenuVisible = true;
  var currentNavIndex = 0.obs;

  var navbarItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      activeIcon: Icon(Icons.home),
      label: "Accueil",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category_outlined),
      activeIcon: Icon(Icons.category),
      label: "Categories",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.store_mall_directory_outlined),
      activeIcon: Icon(
        Icons.store,
        color: whiteColor,
      )
          .box
          .padding(EdgeInsets.all(6))
          .roundedSM
          .shadowSm
          .color(primaryColor)
          .makeCentered(),
      label: "Boutique",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      activeIcon: Icon(Icons.shopping_cart),
      label: "Panier",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_outlined),
      activeIcon: Icon(Icons.account_circle),
      label: "Profil",
    ),
  ];

  var navBody = [
    HomeScreen(),
    CategoryScreen(),
    ProductScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: whiteColor,
          items: navbarItem,
          currentIndex: currentNavIndex.value,
          onTap: (value) {
            currentNavIndex.value = value;
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedIconTheme: IconThemeData(color: primaryColor, size: 30),
          selectedItemColor: primaryColor,
          selectedLabelStyle: TextStyle(color: primaryColor, fontSize: 14),
          unselectedIconTheme: IconThemeData(color: darkFontGrey, size: 26),
          unselectedItemColor: darkFontGrey,
          unselectedLabelStyle: TextStyle(color: darkFontGrey),
          elevation: 0,
        ),
      ),
    );
  }
}
