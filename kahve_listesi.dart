import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KahveListesi extends StatelessWidget {
  //KAHVE CONTAINERI İÇİN FONKSİYON TANIMLAMALARI BÖYLELİKLE ÖZELLİKLERİ YÜKLÜYORUZ
  final String kahveImagepath;
  final String kahveName;
  final String kahveUcreti;


KahveListesi({
 required this.kahveImagepath,
   required this.kahveName,
  required this.kahveUcreti,

});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25.0,bottom:25),
        child: Container(
          padding: EdgeInsets.all(5),
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.brown.shade500,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              //Kahve resmii
              ClipRect(

                  child: Image.asset(kahveImagepath),
              ),

              //Kahvenin ismi
              Padding(
                padding: const EdgeInsets.symmetric(vertical:12.0,horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(

                      kahveName,
                      style: GoogleFonts.akayaKanadaka(
                        color: Colors.white,
                        fontSize: 25,
                      )
                    ),
                    SizedBox(height: 4,),
                    Text(
                      "Sütle birlikte",
                      style: GoogleFonts.alumniSans(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:1.0,horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Lezzette son durak",
                      style:GoogleFonts.alumniSans(
                        fontSize: 18,
                        color: Colors.white,
                      )
                    ),
                  ],
                ),
              ),

              //Ücreti
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$ "+kahveUcreti,style: TextStyle(color: Colors.white),),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.green,
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: Icon(Icons.add,color: Colors.white,),)
                    ,
                  ],
                ),
              ),

            ],
          ),
        ),
    );
  }
}
