import 'package:dicoding_projects/pages/qr_code_page.dart';
import 'package:dicoding_projects/widgets/atm_card.dart';
import 'package:dicoding_projects/widgets/balance.dart';
import 'package:dicoding_projects/widgets/recent_transactions.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/profile_pictures.jpg'),
                radius: 20,
              ),
            ),
            const SizedBox(width: 10),
            const Text("Hi Dika!"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const AtmCard(
                cardHolderName: "Dika",
                cardNumber: "1234 5678 9012 3211",
                expiryDate: "12/26",
                bankName: "Supri Bank",
              ),
              const Balance(),
              RecentTransactions()
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const QrCodePage(),
              ),
            );
          },
          child: const Icon(BoxIcons.bx_qr_scan),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(BoxIcons.bx_home_alt),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(BoxIcons.bx_receipt),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(BoxIcons.bx_envelope),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(BoxIcons.bx_cog),
            ),
          ],
        ),
      ),
    );
  }
}
