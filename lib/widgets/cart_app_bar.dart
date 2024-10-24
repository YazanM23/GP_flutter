import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              // back to previous screen
              Navigator.pop(context);
            },
            child: 
            Icon(
              Icons.arrow_back,
               size: 30, 
               color: Color(0xFF3B4280,),
               ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cart",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3B4280),
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            size: 30,
            color: Color(0xFF3B4280),
            )
        ],
      ),
    );
}
}