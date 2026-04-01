import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/abstract.dart';
import 'package:my_flutter_app/pre_conf.dart';
// import 'package:my_flutter_app/abstract.dart';
// import 'package:my_flutter_app/certificates.dart';
// import 'package:my_flutter_app/pre_conf.dart';
// import 'package:my_flutter_app/workshop.dart';
// import 'package:my_flutter_app/abstract.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // 🔹 Grid Item
  Widget gridItem(
    BuildContext context,
    icon,
    String title, {
    String? subtitle,
  }) {
    // return GestureDetector(
    //   onTap: () {
    //     if (title == "Abstract") {
    //       Navigator.push(
    //         context,

    //       );
    //     }
    //   },

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 35, color: Colors.teal),
          const SizedBox(height: 10),
          Text(title),
          if (subtitle != null) ...[
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 12, color: Colors.black),
            ),
          ],
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),

      // 🔵 AppBar
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text(
          "VIDYEN",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_2_outlined),
            onPressed: () {},
          ),
          IconButton(icon: const Icon(Icons.logout), onPressed: () {}),
          const SizedBox(width: 8),
        ],
      ),

      // 📄 Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🟦 Welcome Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome, Dr. Akram!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "VIDYEN International Conference",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ⚡ Quick Actions Title
            const Text(
              "Quick Actions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            // 🔲 GridView
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                GestureDetector(
                  onTap: () => Get.to(Abstractpage()),
                  child: gridItem(
                    context,
                    Icons.description,
                    "Abstract",
                    subtitle: "submission",
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.to(PreConferencePage()),
                  child: gridItem(context, Icons.calendar_today, "Pre-Conf"),
                ),
                gridItem(context, Icons.build, "Workshop"),
                gridItem(context, Icons.card_membership, "Certificates"),
              ],
            ),

            const SizedBox(height: 20),

            // 📋 Conference Info Title
            const Text(
              "Conference Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            // 📄 Info Cards
            infoTile("Theme", "Competency Based Dental Education"),
            infoTile("Venue", "International Dental Conference 2026"),
            infoTile("Registration ID", "VIDYEN/1000001"),
          ],
        ),
      ),

      // 🔻 Bottom Navigation
    );
  }

  // 🔹 Info Tile
  Widget infoTile(String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(title, style: const TextStyle(color: Colors.grey)),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
