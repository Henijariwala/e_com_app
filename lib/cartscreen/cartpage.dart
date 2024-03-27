import 'package:flutter/material.dart';
import 'package:home_page/utils/global.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const 33 Text("Cart screen"),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(cartList.length, (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage("${cartList[index]['image']}"),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "${cartList[index]['name']}",
                        style:const  TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${cartList[index]['rating']}",
                        style:const  TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${cartList[index]['price']}",
                        style:const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: (){
                      setState(() {
                        cartList.removeAt(index);
                      });
                    },
                      child:const  Icon(Icons.delete)),
                ],
              ),
            ),)
          ),
        ),
      ),
    );
  }
}
