import 'package:flutter/material.dart';
import 'package:home_page/utils/global.dart';
class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    Map m1 = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
        child: Center(
           child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  width: 600,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          FloatingActionButton.small(onPressed: (){
                            Navigator.pop(context);
                          },
                            backgroundColor: Colors.white,
                            shape: CircleBorder(),
                            elevation: 1,
                            child: const Icon(Icons.arrow_back),
                          ),
                          const Spacer(),
                          FloatingActionButton.small(onPressed: (){},
                          backgroundColor: Colors.white,
                          shape:const CircleBorder(),
                          elevation: 1,
                          child:const Icon(Icons.favorite,color: Colors.pinkAccent,),
                          ),
                          FloatingActionButton.small(onPressed:(){},
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          elevation: 1,
                          child: const Icon(Icons.star,color:Colors.amber,),)
                        ],
                      ),
                      Image(image: AssetImage(("${m1['image']}")),
                          height:300),
                    ],
                  ),
                ),
                Row(
                  children: [
                   const SizedBox(width:10),
                    Text("${m1['name']}",
                      style: const TextStyle(fontWeight: FontWeight.bold,fontSize:25)),
                   const SizedBox(width: 90),
                    Container(
                      height:50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: const Text("% On Sale",
                      style: TextStyle(color: Colors.white,fontSize: 15),),
                    ),
                  ],
                ),
               const SizedBox(height: 5),
                Row(
                  children: [
                   const SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                          BoxShadow(color: Colors.grey,
                          spreadRadius: 0.9),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(Icons.star_rate,color: Colors.amber),
                           const SizedBox(width: 5),
                            Text("${m1['rating']}",
                              style: const TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Row(
                      children: [
                        Container(
                          height: 52,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding:  EdgeInsets.all(8.0),
                            child:  Row(
                              children: [
                                Icon(Icons.thumb_up,color: Colors.green),
                                SizedBox(width: 10),
                                Text("94%",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),),
                              ],
                            ),
                          ),
                        ),
                       const Row(
                          children: [
                            SizedBox(width: 10),
                            Text("117 reviews",style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
               const SizedBox(height: 10),
                const Row(
                  children: [
                    SizedBox(width: 15),
                    Text("Power efficient 4nm architecture |12GB of \nRAM including 6GB Virtua.\n"
                        "Large 17.24cm FHD+ 90Hz AdaptiveSync \ndisplay with Corning Gorilla Glass 3 Protection.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    )),
                  ],
                ),
               const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Container(
                      height: 40,
                      width: 56,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 0.9,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: const Text("128 GB",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      )),
                    ),
                   const SizedBox(width: 10),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 0.9,
                                color: Colors.grey
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: const Text("256 GB",style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                      const SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 58,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0.9,
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: const Row(
                            children: [
                              SizedBox(width: 10),
                              Text("512 GB",style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
               const SizedBox(height: 10),
                const Divider(color: Colors.black,thickness: 1),
               const Row(
                  children: [
                    SizedBox(width: 10),
                    Text("₹20999",style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${m1['price']}",style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                    ),),
                    FloatingActionButton.extended(onPressed: ()
                    {
                      cartList.add(m1);
                      Navigator.pop(context);
                    },
                      label: const Text("Add to Cart"),icon:const Icon(Icons.add_shopping_cart,color: Colors.white,),
                      backgroundColor: Colors.green,
                    ),
                  ],
                )
              ],
            ),
          ),
          ),
      ),
      ),
    );
  }
}
