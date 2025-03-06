import 'package:bioflock/pages/analytics.dart';
import 'package:bioflock/pages/dashboard.dart';
import 'package:bioflock/pages/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the navigation controller
    final controller = Get.put(NavigationController());

    return Scaffold(
      // Use Obx for reactive state management
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 60,
          elevation: 40,
          // Bind the selected index from the controller
          selectedIndex: controller.selectedIndex.value,
          // Update the selected index when a destination is tapped
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          // Navigation destinations
          destinations: const [
            NavigationDestination(
              icon: Icon(CupertinoIcons.home),
              label: 'Dashboard',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.graph_circle),
              label: 'Analytics',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.person),
              label: 'Settings',
            ),
          ],
        ),
      ),
      // Display the current screen based on selected index
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  // Reactive variable for selected index
  final Rx<int> selectedIndex = 0.obs;

  // List of screens to navigate between
  final screens = [
    const Dashboard(),
    const Analytics(),
    const Setting()
  ];
}