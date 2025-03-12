import 'package:flutter/material.dart';
import 'package:lat_kuis/models/makanan_model.dart';
import 'package:lat_kuis/pages/detail_page.dart';

class CardCustom extends StatelessWidget {
  final MakananModel model;
  const CardCustom({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8,
              offset: Offset(1, 2),
            )
          ]),
      child: Column(
        spacing: 2,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.network(
              model.image,
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            model.nama,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Rp.${model.harga}',
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(makanan: model),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Pesan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
