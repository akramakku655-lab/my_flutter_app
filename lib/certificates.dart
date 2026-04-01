import 'package:flutter/material.dart';

class CertificatePage extends StatelessWidget {
  const CertificatePage({super.key});
  Widget certificatecard(String title, String subtitle, IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 228, 215, 215),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green[100],
            ),
            child: Icon(icon, color: Colors.green),
          ),
          SizedBox(width: 20),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(subtitle, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.download, color: Colors.indigo),
            onPressed: () {
              "Download clicked";
            },
          ),
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
      body: ListView(
        children: [
          certificatecard(
            "conference participation",
            " certificate in conference participation",
            Icons.workspace_premium,
          ),

          certificatecard(
            "paper participation",
            " certificate in paper participation",
            Icons.workspace_premium,
          ),
          certificatecard(
            "poster participation",
            " certificate in poster participation",
            Icons.workspace_premium,
          ),

          certificatecard(
            "yenvision lightning talk",
            " certificate yenvision lightning talk participation",
            Icons.workspace_premium,
          ),
          certificatecard(
            "1st pace Award",
            " certicate for 1st place Awards",
            Icons.workspace_premium,
          ),
        ],
      ),
    );
  }
}
