import 'package:flutter/material.dart';
import 'package:hotel_design_app/constants.dart';
import 'package:hotel_design_app/models/hotel_data.dart';
import 'package:provider/provider.dart';

class SecondContentScreen extends StatelessWidget {
  const SecondContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loadedHotelData = Provider.of<HotelData>(context).hotels;
    return Scaffold(
      body:  SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(nearHotel),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_back_ios, size: 28,),),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(imageProfile),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
                    Container(
                      height: 84,
                      width: double.infinity,
                      color: Colors.black38,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Near Hotel', style: TextStyle(fontSize: 26, color: Colors.white),),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                          FlatButton(
                            color: Colors.yellow,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              onPressed: () {},
                              child: Text('Edit',),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25), 
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: SizedBox(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 15, left: 12.0, bottom: 8.0, right: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 200,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                      image: NetworkImage(hotelBeach),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 190,
                                  width: 190,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                                      const Text('title', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
                                      const Text('description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),),
                                      Text('distance from centre', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                      Text('popularity'),
                                      Container(
                                        height: 40,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: CircleAvatar(
                                                radius: 15,
                                                backgroundImage: NetworkImage(imageProfile),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );




  }
}
