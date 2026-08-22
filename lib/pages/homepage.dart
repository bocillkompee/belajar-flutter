import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView(
        children: [
          IniUntukCostum(nama: "Arif", job: "fullstack"),
          IniUntukCostum(nama: "Arif", job: "UI/UX"),
          IniUntukCostum(nama: "Arif", job: "QA TESTER"),
          IniUntukCostum(nama: "Arif", job: "fullstack"),
          ListTile(
            title: const Text("Arip"),
            subtitle: const Text("Fullstack"),
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.menu),
          ),
          ListTile(
            title: const Text("Arip"),
            subtitle: const Text("Fullstack"),
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}

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
      title: Text("Arip"),
      subtitle: Text (job == null ? "": job.toString()),
      leading: const Icon(Icons.person),
      trailing: const Icon(Icons.menu),
    );
  }
}