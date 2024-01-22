import 'package:flutter/material.dart';
import 'widgets/card_demo.dart';
import 'widgets/column_page.dart';
import 'widgets/list_view_menu.dart';
import 'widgets/my_card.dart';
import 'widgets/row_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Elon Musk"),
              accountEmail: Text("elon@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
                debugPrint("Home Page");
              },
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text('Row widget'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const RowPage()),
                );
                debugPrint("Row widget");
              },
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text('Column widget'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ColumnPage()),
                );
                debugPrint("Column widget");
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('List View widget'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ListViewMenu()),
                );
                debugPrint("List View widget");
              },
            ),
            ListTile(
              leading: const Icon(Icons.credit_score),
              title: const Text('Card and Inkwell widget'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const CardDemo()),
                );
                debugPrint("Card and Inkwell widget");
              },
            ),
            ListTile(
              leading: const Icon(Icons.credit_card),
              title: const Text('My Card'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyCard()),
                );
                debugPrint("My Card");
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("MyApp"),
      ),
    );
  }
}
