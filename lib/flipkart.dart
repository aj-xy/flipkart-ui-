import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/items.dart';

class Flipka extends StatefulWidget {
  const Flipka({super.key});

  @override
  State<Flipka> createState() => _FlipkaState();
}

class _FlipkaState extends State<Flipka> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(0),
            height: 700,
            width: 500,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            fixedSize: Size(180, 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text(
                            style: TextStyle(color: Colors.white), "Flipkart")),
                    SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: Size(180, 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text(
                            style: TextStyle(color: Colors.black), "Grocery")),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(style: TextStyle(fontSize: 10), "Brand Mall"),
                          Icon(Icons.toggle_off_outlined)
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              prefixIconColor: Colors.grey,
                              hintText: "Search For Product",
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 113, 105, 105)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)))),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 260,
                  width: 500,
                  child: Image.network(
                      'https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2023/09/1-2.jpg?fit=1200%2C800&ssl=1'),
                ),
                Row(
                  children: [
                    Items(
                      img:
                          'https://www.hindustantimes.com/ht-img/img/2023/09/18/550x309/32_inch_LED_TV_1695036349175_1695036371179.JPG',
                      label: "Television",
                    ),
                    Items(
                        img:
                            'https://images-cdn.ubuy.co.in/633ae0ccd10bd143f526ff32-smartphone-5-45-inci-ponsel-layar-penuh.jpg',
                        label: "Mobiles"),
                    Items(
                        img:
                            'https://www.medianews4u.com/wp-content/uploads/2022/08/Flipkart-introduces-a-revamped-shopping-experience-with-NewForYou-campaign-.jpg',
                        label: "Fashion"),
                    Items(
                        img:
                            'https://imgk.timesnownews.com/story/1569756829-flipkart-large-appliances.jpg',
                        label: "Appliances"),
                  ],
                ),
                Row(
                  children: [
                    Items(
                        img:
                            'https://couponswala.com/blog/wp-content/uploads/2022/06/flipkart-flight-booking.jpg.webp',
                        label: "Flights"),
                    Items(
                        img:
                            'https://mycvcreator.com/administrator/postimages/655abaf9462118.87657796.jpg',
                        label: "Gadgeets"),
                    Items(
                        img:
                            'https://baccabucci.com/cdn/shop/products/MG_5242.jpg?v=1633514122',
                        label: "Shoes"),
                    Items(
                        img:
                            'https://www.shutterstock.com/image-illustration/picture-household-appliances-on-white-600nw-84415987.jpg',
                        label: "Appliances")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Recommendeed Items",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(width: 160,),
                    Container(decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue),
                      child:Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                     )
                    
                    
                  ],
                ),
                
              ],
            ),
          )
        ],
      ),
    ));
  }
}
