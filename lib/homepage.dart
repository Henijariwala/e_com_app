import 'package:flutter/material.dart';
import 'package:home_page/cartscreen/cartpage.dart';
import 'package:home_page/producscreen/product.dart';
import 'package:home_page/utils/global.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int i = 4;
  bool isMobile = true;
  bool isLaptop = true;
  int selected = 5000;
  int select = 33000;
  RangeValues rangeValues=RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Discover",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'cart', arguments: const Cartpage());
              },
              child: Container(
                height: 30,
                width: 30,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.shopping_bag_outlined),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.black26, fontSize: 18),
                      ),
                      // Spacer(),
                      Icon(Icons.search),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    "assets/image/saleimage.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(width: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 50,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2),
                        ),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              isMobile=true;
                              isLaptop=true;
                            });
                          },
                          child: const Text(
                            "All",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Row(
                        children: List.generate(
                          mobile.length,
                          (index) => InkWell(
                            onTap: () {
                              setState(() {
                                if (mobile[index] == "SmartPhone")
                                {
                                  isMobile = true;
                                  isLaptop = false;
                                } else if (mobile[index] == "Laptop")
                                {
                                  isMobile = false;
                                  isLaptop = true;
                                } else {
                                  isMobile = false;
                                  isLaptop = false;
                                }
                              });
                            },
                            child: Container(
                              height: 35,
                              width: 100,
                              margin: const EdgeInsets.only(left: 10),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2),
                              ),
                              child: Text(
                                "${mobile[index]}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                DropdownButton(value : selected,items: const  [
                   DropdownMenuItem(child: Text("5k"),value: 5000,),
                   DropdownMenuItem(child: Text("10k"),value: 10000,),
                   DropdownMenuItem(child: Text("15k"),value: 15000,),
                ], onChanged: (value){
                  setState(() {
                    selected=value!;
                  });
                },
                ),
                Text("${rangeValues.start.toInt()}-${rangeValues.end.toInt()}"),
               const  SizedBox(width: 10,),

                RangeSlider(values: rangeValues,
                    max: 100000,
                    divisions: 10,
                    onChanged: (value) {
                      setState(() {
                        rangeValues=value;
                      });
                    },),
                // Mobile
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Visibility(
                    visible: isMobile,
                    child: Row(
                      children: List.generate(
                        mobileList.length,
                        (index) => mobileList[index]['price']>=rangeValues.start &&
                            mobileList[index]['price'] <= rangeValues.end ?
                            InkWell(
                          onTap: () {
                            Map m1 = mobileList[index];
                            Navigator.pushNamed(context, 'product',
                                arguments: m1);
                          },
                          child: Visibility(
                            visible: isMobile,
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(10),
                              child: Visibility(
                                visible: isMobile,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Visibility(
                                      visible: isMobile,
                                      child: Container(
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "${mobileList[index]['image']}")),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${mobileList[index]['name']}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(width: 15),
                                        const Icon(Icons.star_rate,
                                            color: Colors.amber),
                                        Text(
                                          "${mobileList[index]['rating']}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${mobileList[index]['price']}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ) : Container(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                DropdownButton(value : select,items: const [
                   DropdownMenuItem(child: Text("33k"),value: 33000,),
                   DropdownMenuItem(child: Text("57k"),value: 57000,),
                   DropdownMenuItem(child: Text("1l"),value: 100000,),
                ], onChanged: (value){
                  setState(() {
                    select=value!;
                  });
                },
                ),
                // Laptop
                const SizedBox(height: 5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Visibility(
                    visible: isLaptop ,
                    child: Row(
                      children: List.generate(
                          laptopList.length,
                          (index) => laptopList[index]['price']>=rangeValues.start&&
                              laptopList[index]['price'] <= rangeValues.end
                              ?InkWell(
                                onTap: () {
                                  Map m1 = laptopList[index];
                                  Navigator.pushNamed(context, 'product',
                                      arguments: m1);
                                },
                                child: Visibility(
                                  visible: isLaptop,
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(10),
                                    child: Visibility(
                                      visible: isLaptop,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Visibility(
                                            visible: isLaptop,
                                            child: Container(
                                              height: 180,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        "${laptopList[index]['image']}"),
                                                  )),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "${laptopList[index]['name']}",
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(width: 20),
                                              const Icon(Icons.star_rate,
                                                  color: Colors.amber),
                                              Text(
                                                  "${laptopList[index]['rating']}",
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                  "${laptopList[index]['price']}",
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ) : Container(),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
