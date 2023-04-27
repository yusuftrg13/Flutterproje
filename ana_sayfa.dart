import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kahveciapp/util/kahve_bilgisi.dart';
import 'package:kahveciapp/util/kahve_listesi.dart';
import 'package:kahveciapp/sayfalar/ıntro.dart';
class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  //kahve listesi
  final List kahvebilgisi = [
   'Cappucino',
    true,
  [
  'Latte',
    false,
  ],
    [
      'Filtre Kahve',
      false,
    ],
    [
      'Türk Kahvesi',
      false,
    ],
  ];





  //kullanıcının seçeceği kahvelerin listesi

  void kahveVerisiSelected(int index) {
    setState(() {
      for(int i=0;i<kahvebilgisi.length;i++){
        kahvebilgisi[i][1]=false;
      }
      kahvebilgisi[index][1]=true;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green[700],
        leading: Icon(Icons.menu),
        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon((Icons.person),
            ),
          )],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(children: [
        //Dilediğin kahveyi ara
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
              "Sana uygun olan kahveyi bul",
            style:GoogleFonts.bebasNeue(
              fontSize: 36,
            ),
            ),
          ),
        SizedBox(height: 25,),
        //Arama butonu ekle
        Padding(
          padding:EdgeInsets.symmetric(horizontal:25.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Kahveni ara',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange.shade900),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange.shade900),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),

        //Kahve scroll kodları
        Container(
         height: 90,
    child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
        Kahveverisi(
            kahvebilgisi: 'Cappucino',
            isSelected: true, onTap: () {

        },
        ),
      Kahveverisi(
        kahvebilgisi: 'Latte',
        isSelected: false, onTap: () {

      },
      ),
      Kahveverisi(
        kahvebilgisi: 'Türk Kahvesi',
        isSelected: false, onTap: () {

      },
      ),
      Kahveverisi(
        kahvebilgisi: 'Filtre Kahve',
        isSelected: false, onTap: () {

      },
      ),
     ],
    ),
          ),




        //horizontal scroll kahve listesi kodları
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
            KahveListesi(
              kahveImagepath:'lib/resimler/kahve/türkkahve.jpg',
              kahveName: 'Türk Kahvesi',
              kahveUcreti: '22' ,
            ),
              KahveListesi(
                kahveImagepath:'lib/resimler/kahve/filtrekahve.webp',
                kahveName: 'Filtre Kahve',
                kahveUcreti: '27' ,
              ),
              KahveListesi(
                kahveImagepath:'lib/resimler/kahve/kahve.webp',
                kahveName: 'Cappucino',
                kahveUcreti: '34' ,
              ),
              KahveListesi(
                kahveImagepath:'lib/resimler/kahve/sutlukahve02.jpg',
                kahveName: 'Sütlü Köpüklü',
                kahveUcreti: '30' ,
              ),



          ],
          ),
        ),


      ],
      ),
    );
  }
}
