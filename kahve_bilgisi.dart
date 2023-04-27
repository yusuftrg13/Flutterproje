import 'package:flutter/material.dart';

class Kahveverisi extends StatelessWidget {
 final String kahvebilgisi;
 final bool isSelected;
 final VoidCallback onTap;

 Kahveverisi({

   required this.kahvebilgisi,
   required this.isSelected,
   required this.onTap,

});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left:14.0),
        child: Text(
          kahvebilgisi,
          style:TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
            color: isSelected? Colors.orange:Colors.grey[700],
          ),
        ),
      ),
    );
  }
}
//19.13