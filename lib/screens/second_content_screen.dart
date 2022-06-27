import 'package:flutter/material.dart';
import 'package:hotel_design_app/constants.dart';
import 'package:hotel_design_app/models/hotel_data.dart';
import 'package:provider/provider.dart';

import 'details_screen.dart';

class SecondContentScreen extends StatelessWidget {
  const SecondContentScreen({Key? key}) : super(key: key);

  static const routeName = '/second-content-screen';

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
              decoration: const BoxDecoration(
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
                              icon: const Icon(Icons.arrow_back_ios, size: 28,),),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
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
                              child: const Text('Edit',),
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
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25), 
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: SizedBox(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        itemCount: loadedHotelData.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(DetailsScreen.routeName, arguments: loadedHotelData[index].id);
                            },
                            child: Padding(
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
                                        image: NetworkImage(loadedHotelData[index].imageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 190,
                                    width: 190,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                                        Text(loadedHotelData[index].title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
                                        Text(loadedHotelData[index].description, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),),
                                        const Text('distance from centre', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                        const Text('popularity'),
                                        SizedBox(
                                          height: 40,
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 4,
                                            itemBuilder: (context, index) {
                                              return const Padding(
                                                padding: EdgeInsets.only(left: 8.0),
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
