import 'package:flutter/material.dart';
import 'package:hotel_design_app/models/hotel_data.dart';
import 'package:provider/provider.dart';
import '../constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static const routeName = '/detail-screen';

  @override
  Widget build(BuildContext context) {
    final hotelId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedHotelData = Provider.of<HotelData>(context).hotels.firstWhere((hotel) => hotel.id == hotelId);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(loadedHotelData.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
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
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 8.0, right: 10),
                        child: Text(loadedHotelData.title, style: const TextStyle(fontSize: 28, color: Colors.white),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('stars', style: TextStyle(fontSize: 22, color: Colors.white),),
                          const SizedBox(width: 70,),
                          FlatButton(
                            color: Colors.yellow,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            onPressed: () {},
                            child: const Text('5 stars',),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 260,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return const Padding(
                                    padding:  EdgeInsets.only(left: 8.0),
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundImage: NetworkImage(imageProfile),
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Text('39 reviews', style: TextStyle(fontSize: 22, color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 8.0, right: 10),
                        child: Container(
                          height: 125,
                          padding: const EdgeInsets.all(15),
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              Text(loadedHotelData.description, style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic, color: Colors.white,), textAlign: TextAlign.justify,),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 138,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0, right: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text('Options: ', style: TextStyle(fontSize: 22, color: Colors.black),),
                                    SizedBox(
                                      height: 50,
                                      width: 260,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                                            child: Column(
                                              children: [
                                                const CircleAvatar(
                                                  radius: 15,
                                                  backgroundImage: NetworkImage(imageProfile),
                                                ),
                                                const Text('Wifi'),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 55,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: FlatButton(
                                color: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                onPressed: () {},
                                child: const Text('Choose room', style: TextStyle(fontSize: 20, letterSpacing: 1.5, color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
