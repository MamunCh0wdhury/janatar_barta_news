import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:janatar_barta/features/personalization/screens/home_screen/home_screen.dart';
import 'package:janatar_barta/utils/helpers/helper_function.dart';

class NavigationManu extends StatelessWidget {
  const NavigationManu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectIndex.value,
            onDestinationSelected: (index) =>
                controller.selectIndex.value = index,
            backgroundColor: darkMode ? Colors.black : Colors.white,
            indicatorColor: darkMode
                ? Colors.white.withOpacity(0.1)
                : Colors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: ''),
              NavigationDestination(
                  icon: Icon(Iconsax.search_favorite), label: ''),
              NavigationDestination(icon: Icon(Iconsax.save_2), label: ''),
              NavigationDestination(icon: Icon(Iconsax.user), label: ''),
            ]),
      ),
      body: Obx(() => controller.screen[controller.selectIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectIndex = 0.obs;

  final screen = [
    const HomeScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.deepPurple,
    ),
    Container(
      color: Colors.orange,
    )
  ];
}
