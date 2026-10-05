import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),

      body: ListView(
        children: [
          IniUntukCostum(
            nama: "Arif",
            job: "Fullstack",
          ),
          IniUntukCostum(
            nama: "Arif",
            job: "UI/UX",
          ),
          IniUntukCostum(
            nama: "Arif",
            job: "QA TESTER",
          ),
          IniUntukCostum(
            nama: "Arif",
            job: "Fullstack",
          ),
        ],
      ),

      // NAVBAR DI BAWAH
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

// CUSTOM LIST TILE
class IniUntukCostum extends StatelessWidget {
  final String nama;
  final String? job;

  const IniUntukCostum({
    super.key,
    required this.nama,
    this.job,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(nama),
      subtitle: Text(job ?? ""),
      leading: const Icon(Icons.person),
      trailing: const Icon(Icons.menu),
    );
  }
}