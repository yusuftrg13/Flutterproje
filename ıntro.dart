import 'package:flutter/material.dart';
import 'package:kahveciapp/sayfalar/ana_sayfa.dart';
class tanitimPage extends StatelessWidget {
  const tanitimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          //Logo kodlarımızı yazacagımız yer
          Padding(
            padding: const EdgeInsets.only(left: 80.0,right: 80.0,bottom: 80,top: 120),
            child: Image.asset('lib/resimler/kahve/ıntroresim.png'),
          ),

          //Siparişlerini Senin İçin Getirelim
          const Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "Siparişlerini Senin İçin Getirelim",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,

              ),
            ),
          ),

          //Ürünler her zaman sepetinde
          Text(
            "Ürünler sana bir adım uzakta",
          ),

          const Spacer(),
          //Kullanmaya Başla
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder:(context){
                return Anasayfa();

              },
            )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(24),
              child: Text(
                "Sipariş Ver",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer(),

        ],
      ),
    );
  }
}
