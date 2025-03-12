import 'package:flutter/material.dart';
import 'package:lat_kuis/models/makanan_model.dart';

class DetailPage extends StatefulWidget {
  final MakananModel makanan;

  const DetailPage({super.key, required this.makanan});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  TextEditingController total = TextEditingController();
  double totalHarga = 0;

  void hitung() {
    if (total.text != '') {
      setState(() {
        totalHarga = double.parse(total.text) * widget.makanan.harga;
      });
    } else {
      setState(() {
        totalHarga = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Order"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 4,
            children: [
              Image.network(
                widget.makanan.image,
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 12),
              Text(
                widget.makanan.nama,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Harga: Rp.${widget.makanan.harga}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 8,
                  children: [
                    TextField(
                      controller: total,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: false,
                        signed: false,
                      ),
                      decoration:
                          InputDecoration(hintText: "Masukan jumlah pesanan"),
                    ),
                    ElevatedButton(
                      onPressed: () => hitung(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Hitung'),
                    ),
                    Text(
                      'Total Harga : Rp. $totalHarga',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
