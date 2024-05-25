import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elbi Donation System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Homepage',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF2F4852),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              "Welcome, Admin!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF2F4852),
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            // card 1
            SizedBox(
              height: 140.0,
              child: DashboardCard(
                title: 'View All Organizations\nand Donations',
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => ViewAllOrganizationsScreen()),
                  // );
                },
              ),
            ),
            SizedBox(height: 16.0), // space between
            // card 2
            SizedBox(
              height: 140.0,
              child: DashboardCard(
                title: 'Approve Organizations',
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => ApproveOrganizationsScreen()),
                  // );
                },
              ),
            ),
            SizedBox(height: 16.0), // space between
            // card 3
            SizedBox(
              height: 140.0,
              child: DashboardCard(
                title: 'View All Donors',
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => ViewAllDonorsScreen()),
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// UI of cards
class DashboardCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const DashboardCard({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Color(0xFF87CEEB),
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
