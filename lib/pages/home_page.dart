import 'package:flutter/material.dart';
import 'package:lat_kuis/component/card.dart';
import 'package:lat_kuis/models/makanan_model.dart';
import 'package:lat_kuis/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Warung Indomie",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Halo Wijdan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            icon: Icon(
              Icons.logout,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg2vxbh_tV_0IsgCo-1FA7B4dRImhwZblaLw&s',
                // height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.cover,
              ),
              Text(
                'Daftar Menu',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    children: List.generate(MakananModel.makanan.length,
                        (i) => CardCustom(model: MakananModel.makanan[i])),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
